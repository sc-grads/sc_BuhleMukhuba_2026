elements: list[str] = ['A', 'B', 'C', 'D', 'E', 'F']
enumeration: enumerate = enumerate(elements, start=1)
print(enumeration)
print(list(enumeration))

#For loop usage

for i, element in enumerate(elements, start=1):
    print(f'{i}: {element}')
    