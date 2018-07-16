import sys
import os

def ip_counter(filename):
    ip_count = {}# function to get ip address
    input_file = open(filename, 'r')
    for line in input_file:
        info = line.split()
        if not info[0] in ip_count:
            ip_count[info[0]] = 1 #if ip not in dict
        else: # if ip in dict add +1
            ip_count[info[0]] = ip_count[info[0]] + 1
    input_file.close()

    return ip_count

def print_ip_check_DDoS(filename):
    
    ip_count = ip_counter(filename)
    
    IPs = sorted(ip_count.keys())
    for IP in IPs:
        if(ip_count[IP]>10):
            os.system('cls')
            print 'DDoS Suspect is ',IP
            sys.exit(0)
        else:
            print IP, '  ', ip_count[IP]

def main():
    
    if len(sys.argv) != 2:
        print 'usage ./ip_check.py filename'
        sys.exit(1)

    filename = sys.argv[1]
    print 'IP Address    Requests'
    print_ip_check_DDoS(filename)

if __name__ == '__main__':
    main()
