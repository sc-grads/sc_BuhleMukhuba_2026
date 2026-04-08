#List comprehensions
#names: list[str]= ['Mario', 'James', 'Luigi', 'John']
#j_names: list[str]= []

#for name in names:
#    if name.startswith('J'):
#        j_names.append(name)

#j_names_lc: list[str]= [name for name in names if name.startswith('J')]

#print(j_names_lc)

#Slicing
numbers: list[int] = [1, 2, 3, 4, 5, 6]
print(numbers[0:3])
print(numbers[-1])

print(numbers[0:4:2])
print(numbers[4:0:-2])

