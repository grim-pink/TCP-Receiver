#include "stream_reassembler.hh"
#include <bits/stdc++.h>

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

#include <map>

StreamReassembler::StreamReassembler(const size_t capacity) : _output(capacity), ack_index_(0), unass_base_(0), _buffer(), cap(capacity),e(-1) {
}

void StreamReassembler::slide() {
    string data;
    auto id = _buffer.begin();
    while (id != _buffer.end()) {
        if (id->first < unass_base_) {
            id = _buffer.erase(id);
        } else {
            ++id;
        }
    }
    while (_buffer.count(unass_base_) == 1) {
        data = _buffer[unass_base_];
        _output.write(data);
        _buffer.erase(unass_base_);
        ack_index_ += data.size();
        unass_base_ = ack_index_;
        if (e == unass_base_-1){
            _output.end_input();
        }
    }

}


void StreamReassembler::push_substring(const string &data, const uint64_t index, const bool eof) {
    
    uint64_t id = index;
    string sub_data = data;
    
    if(eof){
      if(data.size()==0){
        e = index;
      }else{
      e = index + data.size() -1;}
    }
 
    if (index >= unass_base_ + cap || id < unass_base_ && id + sub_data.size() <= unass_base_ ) 
        return;

    
    if (index < unass_base_ && index + data.size() > unass_base_){
        sub_data = data.substr(unass_base_ - index);
        id = unass_base_;
    }
   
    if( id + sub_data.size() > unass_base_ + cap){
        sub_data = sub_data.substr(0, unass_base_+ cap);
    }
    
    if(sub_data.size()>_output.remaining_capacity()){
      sub_data=sub_data.substr(0,_output.remaining_capacity());
    }
    
    if(unass_base_ == id && _output.remaining_capacity()>0){
        _output.write(sub_data);
        if(data.size()>0){
          ack_index_= id + sub_data.size() ;
        }else{
          ack_index_+=1;
        }
        unass_base_ = ack_index_ ; 
        if (e == unass_base_- 1){
            _output.end_input();
        }

    }

    else {
            for (int i = 0; i < sub_data.size(); i++) {
                if ( id < cap) {
                    _buffer[id] = sub_data[i];
                }
                id+=1;
            }
    }
    
    slide();

}

size_t StreamReassembler::unassembled_bytes() const {
    return _buffer.size();
}

bool StreamReassembler::empty() const {
    return _output.buffer_empty() && unassembled_bytes() == 0;
}

size_t StreamReassembler::ack_index() const {
    return ack_index_;
}
