f, e= 1, 2 # [1, 2] / 'XY'

print(f, e)

c, *d = 'abcdef' # * - grabs majority
print(c, d)

*_, last = 'abcdef' # returns the last element
print(last)

def add(a: int, b: int) -> None:
    print(f'{a+b =}')

numbers: dict[str, int] = {'a': 5, 'b': 10}
add(**numbers)

