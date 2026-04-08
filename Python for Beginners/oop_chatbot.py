from random import choice
from datetime import datetime

class Chatbot:
    def __init__(self, name: str, age: int) -> None:
        self.name = name
        self.age = age

    def get_description(self) -> str:
        return f'{self.name} is a bot who is {self.age} years old'

    def get_response(self, text: str) -> str:
        lowered: str = text.lower()

        if 'hello' in lowered:
            return f'{self.name}: Hey there!'
        elif 'bye' in lowered:
            return f'{self.name}: Bye!'
        elif 'how are you' in lowered:
            return f'{self.name}: Great, thanks!'
        elif 'how old are' in lowered:
            return f'{self.name}: Ok, my age is {self.age} years old'
        elif 'what time is it' in lowered:
            return f'{self.name}: The current time is {datetime.now():%H%M%S}'
        else:
            random_responses: list[str] = [ 'I dont understand...', 'Would you mind rephrasing that?', 'What?', 'Ah, what?']
            return f'{self.name}: {choice(random_responses)}'

    def run(self) -> None:
        while True:
            user_input: str = input('You:')
            if user_input == 'exit':
                print(f'{self.name}: Goodbye!')
                break

            response: str = self.get_response(user_input)
            print(response)

def main() -> None:
    mario: Chatbot = Chatbot('Mario', 18)
    print(mario.get_description())
    mario.run()

if __name__ == '__main__':
    main()