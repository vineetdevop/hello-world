#!/usr/bin/python

# program to check prime number

import sys

def primeCheck(num):
    print "========== primeCheck() starts ==========="
    print "data type of num is : ", type(num)
    if num > 0:
        for i in range(2, num):
            if (num%i == 0): 
                print "Not a prime number"
                break
        else:
            print "Yes, %s is the prime number" %num
    

    print "========== primeCheck() ends ==========="


def main():
    print "========== main() starts ==========="
    '''
    num = sys.argv[1]
    if num == 0:
        print "Not a valid input."
    else: 
        primeCheck(num)'''

    primeCheck(int(sys.argv[1]))
    #print "data type of num is : ", type(num)
    #num = int(num)
    print "========== main() ends ==========="


if __name__ == main():
    main()
