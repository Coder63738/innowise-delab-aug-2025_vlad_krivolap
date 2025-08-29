from random import randint

random_number = randint(1,5)
number = input("\nВведите число от 1 до 5 чтобы угадать его:")
number = int(number)
if number == random_number:
    print("Вы угадали!")
elif number < random_number:
    print("Моё число больше!")
elif number > random_number:
    print("Моё число меньше!")
    