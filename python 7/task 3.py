from random import randint

number = randint(1,10)
flag = True
while flag:
    choose = input("Введите число для угадывания: ")
    choose = int(choose)
    if choose == number:
        flag = False
    elif choose < number:
        print("Неверно! Введите число больше")
    elif choose > number:
        print("Неверно! Введите число меньше")
print("Вы угадали число: " + str(number))