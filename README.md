## TCP Receiver Implementation

### Overview

This project implements a TCP Receiver to ensure reliable byte stream transmission using TCP.

### ByteStream

The ByteStream class handles a stream of bytes with the following features:

1. Write bytes to the input side, read from the output side.
2. Finite stream with an end-of-input flag.
3. EOF when the stream is fully read.
4. Capacity limit on byte storage.
5. Writing stops if capacity is exceeded.
6. Reading frees space for more writing.

**Steps:**
- Implement `ByteStream` in `src/byte_stream.cc` as per the interface in `src/byte_stream.hh`.
- Build with `make` in the build directory.
- Test with `ctest -R '^byte_stream'`.

### Reassembler

The Reassembler class reassembles received byte segments into a continuous byte stream. It handles:

1. Next expected bytes in the stream.
2. In-order bytes within capacity but not yet writable.
3. Out-of-capacity bytes to be discarded.

**Steps:**
- Implement `Reassembler` in `src/reassembler.cc` as per the interface in `src/reassembler.hh`.
- Build with `make`.
- Test with `ctest -R '^reassembler'`.

### TCP Receiver

The TCP Receiver processes TCPSegments and uses the Reassembler to write bytes to the ByteStream. It also sends back acknowledgment numbers (ackno) and window size.

**Steps:**
- Implement `TCPReceiver` in `src/tcp_receiver.cc` as per the interface in `src/tcp_receiver.hh`.
- Implement `WrappingInt32` conversion routines in `src/wrapping_integers.cc`.
- Build with `make`.
- Test with `ctest -R '^tcp_receiver'`.

### Running Tests

To test the entire implementation:
```sh
ctest
```
