words = ["hello", "world", "python", "code"]
word_length = []
long_words = []
empty_dict = {}
for i in range(len(words)):
    word_length.append(len(words[i]))
print(word_length)
for word in words:
    if len(word) > 4:
        long_words.append(word)
print(long_words)
for word in words:
    empty_dict[word] = len(word)
print(empty_dict)
