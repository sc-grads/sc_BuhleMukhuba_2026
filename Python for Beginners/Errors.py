#User Input
#import sys

#total: int = 0
#while True:
 #   user_input: str = input("Please enter a number: ")

  # if user_input == "0":
   #     print("Total", total)
    #    sys.exit()

    #try:
     #   total += int(user_input)
    #except ValueError:
     #   print("Please enter a valid number")

#Try...Except
#while True:
  #  try:
   #     user_input: str = input("Please enter a number: ")
    #    print(f"10/{user_input} = {10/float(user_input)}")
    #except ZeroDivisionError:
     #   print("You can't divide by 0")
    #except ValueError:
     #   print("Please enter a valid number")

#Else...Finally
#user_input : str = "10"

#try:
 #   result : float = 1 / float(user_input)
  #  print(f"{user_input} = {result}")
#except ZeroDivisionError:
#    print("You cannot divide by zero")
#except ValueError:
 #   print(f"{user_input} is not a number")
#else:
 #   print("Success!")
#finally:
 #   print("Finally: I am always executed")

#Raise
#raise Exception("This is a general exception")

#def check_age(age: int) -> bool:
 #   if age < 0:
  #      raise ValueError('Not a valid age')
   # elif age >= 18:
    #    print('You are old enough')
     #   return True
    #else:
     #   print('You are not old enough')
      #  return False

#Unknown Errors
while True:
    user_input: str = input('Enter a number:')

    try:
        number: float = float(user_input)
        print(f'You entered: {number}')
    except Exception as e:
        print('Program encountered a new exception')
        print(f'Type: {type(e)}')
        print(f'Error: {e}')

        