number = input("Введите число для обратного отсчёта: ")
number = int(number)
for int in range(1,number + 1):
    print(number)
    number -= 1
print("Go!")