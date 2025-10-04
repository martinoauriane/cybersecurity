import socket

# The goal here is to build a porter scanner. 
# USAGE -- A port scanner helps you identify open ports on a remote host, which is an essential step in vulnerability assessment. 

# A socket is one of the ways two programs can pass information back and forth to each other. 

# A socket in Python is an endpoint for sending or receiving data across a network using the socket API. 
# Socket programming in Python involves using sockets to establish communication between a server and clients over a network.

# socket.connect_exec :
# used to check on whether a port is open/closed, we're using the python function socket.connect_ex((192.169.10.1, 80))
# this function returns an error indicator. If the operation succeded, the error indicator is 0, otherwise it returns an errno variable. 

def scan_ports(host, start_port, end_port):
  print(f"Scanning {host} from port {start_port} to port {end_port}")
  for port in range(start_port, end_port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(0.5)
    result = sock.connect_ex((host, port))
    if result == 0:
      print(f"Port {port} is open")
      sock.close # it's always a good practise to close the socket once you're done.

# Example usage: scan localhost for ports 20 to 25
scan_ports("127.0.0.1", 20, 25)