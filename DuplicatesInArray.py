#!/usr/bin/python



def duplicateInArray(list):
    for i in range(0, len(list)):
        for j in range(i+1, len(list)):
            if(list[i] == list(j)):
                print "Duplicate exists ", list[i]
                return
    print "No duplicates in given array."

def main():
    list = [3, 2, 4, 2, 6, 22]
    duplicateInArray(list)

if __name__ == '__main__':
    main()
