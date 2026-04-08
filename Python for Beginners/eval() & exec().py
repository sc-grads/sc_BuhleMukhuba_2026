#eval
result: int = eval('1 + 100 + 10')
print(result)

#2
while True:
    user_input: str = input('Enter math: ')
    print(eval(user_input))

#Exec
while True:
    user_inpt: str = input('Command')
    exec(user_inpt)

