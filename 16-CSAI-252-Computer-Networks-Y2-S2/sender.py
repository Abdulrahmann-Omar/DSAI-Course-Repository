import socket
import time
import struct
import random

# --- Receiver Configuration (should be in receiver.py) --- 
BUFFER_SIZE = 4096  

# --- Sender Configuration --- 
SENDER_PORT = 12346  # Port to send from 
RECEIVER_IP = '192.168.1.17'  # Receiver's IP address (Corrected)
RECEIVER_PORT = 12345  # Receiver's port
WINDOW_SIZE = 4  # Go-Back-N window size
TIMEOUT_INTERVAL = 1  # Timeout interval in seconds
MSS = 1024  # Maximum Segment Size (bytes)

# Packet structure
PACKET_FORMAT = '!HH'  # Packet ID and File ID (both 16-bit unsigned integers)

def send_file(filename):
    """Sends a file using the Go-Back-N protocol over UDP."""

    # Create a UDP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(('', SENDER_PORT))
    sock.settimeout(TIMEOUT_INTERVAL)  # Set timeout for receiving ACKs

    with open(filename, 'rb') as f:
        file_data = f.read()

    # Split data into chunks (packets)
    packets = [file_data[i:i+MSS] for i in range(0, len(file_data), MSS)]

    # Initialize Go-Back-N variables
    base = 0  # Window base
    next_seq_num = 0  # Next packet to be sent
    file_id = random.randint(0, 65535)  # Unique File ID
    start_time = None
    retransmissions = 0

    # Transmit packets
    while base < len(packets):
        # Send packets within the window
        while next_seq_num < base + WINDOW_SIZE and next_seq_num < len(packets):
            packet_data = packets[next_seq_num]
            if start_time is None:
                start_time = time.time()

            # Create header
            header = struct.pack(PACKET_FORMAT, next_seq_num, file_id)

            # Add trailer for the last packet
            if next_seq_num == len(packets) - 1:
                trailer = b'\xff\xff'
            else:
                trailer = b'\x00\x00' 

            # Construct packet
            packet = header + packet_data + trailer
            sock.sendto(packet, (RECEIVER_IP, RECEIVER_PORT))
            print(f"Sent Packet ID: {next_seq_num}")

            next_seq_num += 1

        # Wait for ACKs
        try:
            ack_data, addr = sock.recvfrom(BUFFER_SIZE)
            received_file_id, ack_seq_num = struct.unpack(PACKET_FORMAT, ack_data)
            print(f"Received ACK for Packet ID: {ack_seq_num}")

            if received_file_id == file_id:
                base = ack_seq_num + 1
            else:
                print("File ID mismatch in ACK!")

        except socket.timeout:
            print("Timeout! Retransmitting window...")
            retransmissions += 1
            next_seq_num = base  # Reset next_seq_num to resend window

    end_time = time.time()
    elapsed_time = end_time - start_time

    # Display transfer statistics
    print("\nFile Transfer Statistics:")
    print(f"  Start Time: {time.ctime(start_time)}")
    print(f"  End Time: {time.ctime(end_time)}")
    print(f"  Elapsed Time: {elapsed_time:.2f} seconds")
    print(f"  Number of Packets: {len(packets)}")
    print(f"  Number of Bytes: {len(file_data)}")
    print(f"  Number of Retransmissions: {retransmissions}")
    print(f"  Average Transfer Rate: {len(file_data) / elapsed_time:.2f} bytes/sec")

    sock.close()

if __name__ == "__main__":
    filename = "Decatur_Boarding_the_Tripolitan_Gunboat.jpg"  # File to be sent (Corrected)
    send_file(filename)