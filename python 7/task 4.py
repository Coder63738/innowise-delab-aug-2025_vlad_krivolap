scores = [75, 88, -10, 95, 100, 0, -25, 89]
total_score = 0
flag = True
for i in scores:
    if i < 0:
        continue
    elif i > 0:
        print(f"Добавлен балл {i}")
        total_score += i
    elif i == 0:
        print("Обработка прервана")
        flag = False
        break
if flag:
    print("Все данные обработаны")
print(f"Итоговая сумма баллов: {total_score}")
