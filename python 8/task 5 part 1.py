nums = [2, 11, 15, 7, 2]
target = 4
set = [0,0]
flag = False
for i in range(len(nums)):
    set[0] = i
    for j in range(len(nums)):
        if i == j:
            continue
        set[1] = j
        if nums[i] + nums[j] == target:
            flag = True
            break
    if flag:
        break
print(set)
