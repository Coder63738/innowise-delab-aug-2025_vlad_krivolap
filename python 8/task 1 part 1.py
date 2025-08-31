string = "Python Programming"
length = len(string)
char = string[7]
three_char = ""
counter = 0
count = 0
bool = False
gram = ["g","r","a","m"]
for i in range(3):
    three_char += string[-i - 1]
for i in string:
    if i == gram[0]:
        for j in range(3):
            if counter + j == len(string) - 1:
                break
            print(f"{string[counter + j + 1]} {gram[j + 1]}")
            if string[counter + j + 1] == gram[j + 1]:
                count += 1
            else:
                break
    if count == 3:
        bool = not bool
        break
    else:
        count = 0
    counter += 1
print(f"Длина строки: {length}\n7 элемент по индексу: {char}\nПоследние 3 символа: {three_char}\nЕсть ли в строке часть gram: {bool}")