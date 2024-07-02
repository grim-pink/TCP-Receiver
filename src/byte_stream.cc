#include "byte_stream.hh"

#include <algorithm>

using namespace std;

ByteStream::ByteStream(const size_t capa)
: capacity(capa){
    _error=false;
    buf_size=0;
    input_ended_flag=false;
    bytesWritten=0;
    bytesRead=0;
    eof_flag=false;
    buffer_empty_flag=true;
    rem_capacity=capacity;
}

size_t ByteStream::write(const std::string &data) {
    if (input_ended() || error() || data.empty()) {
        return 0;
    } 
    size_t bytes_to_write=min(remaining_capacity(), data.size());

    for (size_t i = 0; i < bytes_to_write; ++i) {
        buffer.push_back(data[i]);
    }
    bytesWritten+=bytes_to_write;
    return bytes_to_write;
}

std::string ByteStream::peek_output(const size_t len) const {
    if (len<=buffer_size()) {
        return std::string(buffer.begin(),buffer.begin()+len);
    } else {
        return std::string(buffer.begin(),buffer.end());
    }
}

void ByteStream::pop_output(const size_t len) {
    if (len<=buffer_size()) {
    	buffer.erase(buffer.begin(),buffer.begin()+len);
    	bytesRead+=len;      
    }else{
    	set_error();
    }
}

std::string ByteStream::read(const size_t len) {
    if (len<=buffer_size()){
    std::string data=peek_output(len);
    pop_output(len);  
    return data;
    }
    else{
    	set_error();
    	return "";
    } 
    
}

void ByteStream::end_input() {
    input_ended_flag=true;
}

bool ByteStream::input_ended() const {
    return input_ended_flag;
}

size_t ByteStream::buffer_size() const {
    return buffer.size();
}

bool ByteStream::buffer_empty() const {
    return buffer.empty();
}

bool ByteStream::eof() const {
    return input_ended() && buffer_empty();
}

size_t ByteStream::bytes_written() const {
    return bytesWritten;
}

size_t ByteStream::bytes_read() const {
    return bytesRead;
}

size_t ByteStream::remaining_capacity() const {
    return capacity-buffer.size();
}
