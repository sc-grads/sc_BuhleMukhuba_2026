# Creating a function

def greet():
    print("Hello")

greet()

# Pass
def greet():
    pass

greet()

# Parameters & Arguments
def greet(name: str, age: int):
    print(f"Hello, {name}")

greet("Buhle", 12)
greet(name="Judas", age = 12)

#Return Functions
def get_length(text: str) -> int:
     print(f"Getting length of {text}")
     return len(text)

name: str = "Judas"
length: int = get_length(name)
print(length)

#Recursion
import time

def connect_to_internet(signal: bool, delay: int)-> None:
     if delay > 5:
         signal = True

     if signal:
         print("Connected to Internet")

     else:
         print("Not connected to Internet")
         print(f"Trying again in {delay}s...")
         time.sleep(delay)
         connect_to_internet(signal, delay + 2)

connect_to_internet(False)

#Args & Kwargs
print(1, 2, 3, "hello", sep = ":")

def add(*args : int) -> int:
    print(args)
    return sum(args)

print(add(1, 2))

def greet(greeting: str, *people: str, ending: str) -> None:
    for person in greeting:
        print(f'{greeting}, {person}{ending}')

greet("Hello", "Bob","Judas", "Paul", ending='!')

#*&/
def func(var_a: str, /, var_b: str, *, var_c: str) -> None:
    print(var_a)
    print(var_b)
    print(var_c)

func ("a", "b", var_c = "c")
func("a", var_b="b", var_c = "c")