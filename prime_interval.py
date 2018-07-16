#!/usr/bin/python

#  python program to find all the prime numbers between given interval

lower = 100
upper = 1000

def prime():
    print "Prime numbers between %s and %s " %(lower, upper)
   
    for num in range(lower, upper + 1):
        # primes are greater than 1
        if num > 1:
            for i in range(2, num):  
                if (num % i) == 0:
                    break
            else:
                print num  

def main():
    prime()

if __name__ == main():
    main()
