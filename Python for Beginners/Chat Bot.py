import sys
from datetime import datetime


def get_response(text: str) -> str:
    lowered: str = text.lower()

    if lowered in ["hello", "hi", "hey"]:
        return "hey there"
    elif "How are you" in lowered:
        return "I\'m good thanks!"
    elif "your name" in lowered:
        return "My name is: Bot "
    elif "time" in lowered:
        current_time = datetime.now()
        return f"The time is {current_time.strftime('%I:%M %p')}"
    elif lowered in ["bye", "see you", "good bye"]:
        return "See you later!"
    else:
        return "Sorry, I didn't understand you "

while True:
    user_input: str = input("You: ")

    if user_input == "exit":
        print('Bot: It was a pleasure talking to you!')
        sys.exit()

    bot_response: str = get_response(user_input)
    print(f"Bot: {bot_response}")