numbers: list[int] = list(range(1, 11))
print(numbers)

def is_even(number: int) -> bool:
    return number % 2 == 0

even_numbers: filter = filter(is_even, numbers)
print(even_numbers)
print(list(even_numbers))
