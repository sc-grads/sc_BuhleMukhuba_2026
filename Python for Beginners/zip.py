numbers: list[int] = [1, 2, 3, 4]
letters: list[str] = ['a', 'b', 'c']
symbols: list[str] = ['!', '?', '.']

zipped: zip = zip(numbers, letters)
print(zipped)
print(list(zipped))

