#include "wrapping_integers.hh"

#include <iostream>

using namespace std;

WrappingInt32 wrap(uint64_t n, WrappingInt32 isn) { 
     
    uint32_t rel_seqno= static_cast<uint32_t>((n% (1ULL << 32) + isn.raw_value()));
    return WrappingInt32(rel_seqno); 
    }
  

 uint64_t unwrap(WrappingInt32 n, WrappingInt32 isn, uint64_t checkpoint) {
    uint64_t val = static_cast<uint64_t>(n.raw_value() - isn.raw_value());
    const uint64_t op = 1ULL << 32; 

    uint64_t rem = checkpoint % op;
    uint64_t diff = checkpoint - rem;
    

    if (checkpoint >= op && rem == 0) {
        rem += op;
        diff -= op;
    }
    
    if (val > rem) {
        return (diff >= op && (op - val + rem) <= (val - rem)) ? diff + val - op : diff + val;
    }

    return (rem - val) <= (val + op - rem) ? diff + val : diff + val + op ;
}   

