fruits = ["apple", "banana"]
print(fruits)
fruits.append("orange")
print(fruits)
fruits.insert(1,"grape")
print(fruits)
fruits.remove("banana")
print(fruits)
fruits.sort()
print(fruits)
flag = True
counter = -1
while flag:
    if fruits[0] == fruits[counter]:
        flag = False
    print(fruits[counter], end = " ")
    counter -= 1

        