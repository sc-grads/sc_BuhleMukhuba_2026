from datetime import time
# If...Elif...Else
# age: int =30

# if age >= 18:
#     print("You are old enough to vote")
# else:
#     print("You are old enough to vote")
#
# weather: str ="cloudy"
#
# if weather == "clear":
#     print("It is a nice day")
# elif weather == "cloudy":
#     print("The weather could be better")
# elif weather == "rainy":
#     print("What an awful day")
# else:
    # print("Unknown weather condition")

# If...Else
# number: int = 0

# if number > 0:
#     result : str = "Above 0"
# else:
#     result : str = "Below 0"
# Instead use:
# result: str = "Above 0" if number > 0 else "Below 0"

# print(result)

#For Loop
# text: str = "hello, world"
#
# for i in range(3):
#     print(f"{i} : {text}")

# While loop
# i: int = 5
#
# while i > 0:
#    print(F"Hello: {i}")
#      i -= 1
#
# connected: bool = True
#
# while connected:
#     print("Using Internet...")
#     time.sleep(5)
#
# print("Connection ended...")

# Break & Continue
# number: int = 5
#
# while number > 0:
#     number -= 1
#
#     if number ==2:
#         print("Skipping 2")
#         continue
#
#     print(number)
#
# print("Done")

# Loop...Else
for i in range(3):
    print(f"Iteration: {i}")
else:
    print("Done")
#
i: int = 3

while i > 0:
    i -=1
    print("Okay")
else:
    print("Done")
    