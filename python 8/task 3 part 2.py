def choice(ignore_lowest):
    choice = 0
    if ignore_lowest == True:
        choice -= 1
    return choice

def calculate_average_score(scores,ignore_lowest):
    av_score = 0
    if ignore_lowest:
        min_number = min(scores)
        for i in range(len(scores)):
            if scores[i] == min_number:
                continue
            av_score += scores[i]
    else:
        for i in range(len(scores)):
            av_score += scores[i]
    av_score /= len(scores) + choice(ignore_lowest)
    print(f"Средний балл: {av_score}")

student_data = [
{'name': 'Алексей', 'scores': [85, 92, 78, 95]},
{'name': 'Марина', 'scores': [65, 70, 58, 82]},
{'name': 'Светлана', 'scores': [98, 95, 100]}
]
ignore_lowest = False
for i in range(3):
    calculate_average_score(student_data[i].get('scores'),ignore_lowest)
ignore_lowest = True
print("Вывод с ignore_lowest = true ")
for i in range(3):
    calculate_average_score(student_data[i].get('scores'),ignore_lowest)
