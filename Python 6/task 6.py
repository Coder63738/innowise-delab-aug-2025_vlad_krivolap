number1 = input("\nВведите первое число: ")
number1 = float(number1)
number2 = input("Введите второе число: ")
number2 = float(number2)
operator = input("Выберите оператор(+,-,*,/): ")
if number2 == 0 and operator == "/":
    print("На ноль делить нельзя ")
if operator == "+":
    result = number1 + number2
elif operator == "-":
    result = number1 - number2
elif operator == "*":
    result = number1 * number2
elif operator == "/":
    result = number1 / number2
print("Результат: " + str(number1) +" " + operator + " " + str(number2)+" = " + str(result))
