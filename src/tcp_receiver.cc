#include "tcp_receiver.hh"

#include <algorithm>


using namespace std;


void TCPReceiver::segment_received(const TCPSegment &seg) {
    const TCPHeader head = seg.header();
    
    string _payload = seg.payload().copy();
    
    uint64_t checkpoint = _reassembler.ack_index();
    uint64_t abs_seqno = unwrap(head.seqno, _isn, checkpoint);
    uint64_t stream_idx = abs_seqno - _synReceived;

    if (!head.syn && !_synReceived)
        return;
        
    if (head.syn && !_synReceived) {
        _isn = head.seqno;
        _synReceived = true;   
    }
    
    if (head.fin){
       _finReceived = true;
    }

    if (!_payload.empty()) {
        if (head.syn || head.seqno != _isn) {
            _reassembler.push_substring(_payload, stream_idx, head.fin);
        }
    }
    if (_finReceived) { 
        if (unassembled_bytes() == 0)
            stream_out().end_input();
    }
}

optional<WrappingInt32> TCPReceiver::ackno() const {
    optional<WrappingInt32> _ackno;
    if (_synReceived) {
        uint64_t stream_idx = _reassembler.ack_index()+_synReceived;
        if (stream_out().input_ended())
            stream_idx++;
        _ackno = wrap(stream_idx, _isn);
    }
    return _ackno;
}

size_t TCPReceiver::window_size() const { return _capacity - stream_out().buffer_size(); }
