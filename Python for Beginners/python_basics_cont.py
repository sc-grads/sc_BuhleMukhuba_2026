#Truthy&Falsy
#print(bool([]))
#print(bool(None))
#print(bool(200))

#Comparing Floats
from math import isclose

#a: float = 0.999
#b: float = 1.000

#print(f'{a} ==  {b}?', isclose(a, b, rel_tol=0.1))

#Scope
#number: int = 999 #Global scope

#def print_number()-> None:
#    number = 10    #local scope
#    print(number)

#Global
#number : int = 0

#def change_number() -> None:
#    global number
 #   print(number)

#    def inner_func() -> None:
 #       global number
  #      number = 10

#Nonlocal
#def outer_func() -> None:
 #   name: str =''
 #   value: int = 0

 #   def inner_func() -> None:
 #       nonlocal name, value
 #       name = 'Tom'
 #       value = 100

 #   inner_func()
  #  print(name, value)



