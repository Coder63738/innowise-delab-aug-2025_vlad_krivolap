x = int(input("Введите длину: "))
y = int(input("Введите ширину: "))
print("Хотите ли ввести высоту?")
choose = input("Да/Нет ")
choose = choose.lower()
if choose == "да":
    z = int(input("Введите высоту: "))
    matrix = []
    for i in range(0,z + y - 1):
        row = ["  "for _ in range((x + y - 1))]
        matrix.append(row)
    for depth in range(z): # запись высоты
        matrix[depth][0] = "% "
        matrix[depth + y - 1][y - 1] = "% "
        matrix[depth + y - 1][x + y - 2] = "% "
    for length in range(x): # запись длины
        matrix[0][length] = "% "
        matrix[y - 1][length + y -1] = "% "
        matrix[y + z - 2][length + y - 1] = "% "
    for width in range(y):  # запись ширины
        matrix[width][width] = "% "
        matrix[width][width + x - 1] = "% "
        matrix[width + z - 1][width] = "% "
    for i in range(z + y - 1):  # вывод паралилограмма
        for j in range(x + y - 1):
            print(matrix[i][j], end="")
        print()
else:
    for x1 in range(0,x):
        for y1 in range(0,y):
            print("*", end = " ")
        print("\n", end = "")