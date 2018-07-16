#!/usr/bin/python

import sys

def generateFibonacci(x):
     if(x == 0):
        return 0
     elif(x == 1):
        return 1
     else:
        return generateFibonacci(x-1) + generateFibonacci(x-2)

def main():
    num = sys.argv[1]
    if num <= 0:
        print "Not a valid number"
    else:
        for i in range(int(num)):	
            print i, "---", generateFibonacci(i)


if __name__ == '__main__':
    main()
