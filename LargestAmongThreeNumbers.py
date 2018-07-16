#!/usr/bin/python

def largestAmongThreeNos(first, second, third):
    print "largestAmongThreeNos() started"
    if (first < 0 and second < 0 and third < 0):
        print "Negative or zero numbers are provided, please provide three positive integers."
        exit()
    else:
        if (first > second and first > third):    print "%s is largest among all three." %first
        elif (second > first and second > third): print "%s is largest among all three." %second
        elif (first == second == third):          print "All are equal."
        else:                                     print "%s is largest." %third

    print "largestAmongThreeNos() finished."

def main():
    print "main() started"
    largestAmongThreeNos(0, 11, 22)
    print "main() finished"

if __name__ == '__main__':
    main()
