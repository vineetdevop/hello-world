#!/usr/bin/python

import sys

# program to check the provided year is Leap or Normal year

def checkLeapYear(num):
    if (num%400 == 0):
        print "%s is the leap year" %num
    elif (num%4 == 0  and num%100 != 0) :
        print "%s is the leap year" %num
    else:
        print "%s is not a leap year" %num
       

def main():
    num = sys.argv[1]
    if num <= 0:
        print "Not a valid input."
    else:
        checkLeapYear(int(num))


if __name__ == '__main__':
    main()
