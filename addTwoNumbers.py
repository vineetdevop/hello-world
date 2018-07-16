import math

# this program to add two numbers

x = input("Enter a number: ")
if x == 'none':
    input("You have not entered anything, please enter a number: ")
#a = float(x)
#math.isnan(a)
y = input("Enter another number: ")
if y == 'none':
    input("You have not entered another number, please enter it: ")

z = x+y
print "Addition of %s and %s is: %s" %(x, y, z)
