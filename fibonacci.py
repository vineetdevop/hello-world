#!/usr/bin/python

import sys

def generateFibinacci(nElems):
    counter=0
    n1=0
    n2=1
    if (nElems <= 1):
        print "Not proper number."
    else:
        print "Fibonacci series upto %s terms\n" %nElems
        while (counter < nElems):
            print n1
            n1 = n2
            n2 = n1+n2
            counter = counter + 1
            

def main():
    num = sys.argv[1]
    if num <= 0:
        print "Not a valid input."
    else:
        generateFibinacci(int(num))


if __name__ == '__main__':
    main()
