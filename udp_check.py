#!/usr/bin/env python3
"""udp_check.py - confirm the board's air-picture packets reach this PC.
Run:  python udp_check.py       (Ctrl-C to stop)
If this prints lines, the network is fine and the problem is only in the GUI.
If it prints nothing while the board says 'sent N tracks', it's a network/
firewall/IP problem, not the GUI."""
import socket, struct
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(("0.0.0.0", 5005))            # listen on all interfaces, port 5005
print("listening on UDP :5005 ... (Ctrl-C to stop)")
while True:
    data, addr = s.recvfrom(65535)
    magic, epoch, n = struct.unpack_from("<III", data, 0)
    ok = "OK" if magic == 0x4D534446 else "BAD-MAGIC"
    print(f"from {addr[0]:<15} epoch {epoch:<4} tracks {n:<4} {len(data):>5} bytes  [{ok}]")