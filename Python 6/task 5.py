number = input("\nВведите число для проверки чётности: ")
number = int(number)
if number < 0:
    number = number * (-1)
if number == 0:
    print("Число нечётное ")
elif (number % 2) == 1:
    print("Число нечётное ")
else:
    print("Число чётное ")
