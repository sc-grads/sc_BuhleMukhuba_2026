import time
from functools import cache

@cache
def count_vowels(text: str) -> int:
    print('Counting vowels...')
    time.sleep(3)
    return sum(text.count(vowel) for vowel in 'AEIOUaeiou')

def main() -> None:

    while True:
        user_text: str = input('You: ').lower()

        if user_text =='info':
            print(f'Bot: {count_vowels.cache_info()}')
        elif user_text == 'clear':
            count_vowels.cache_clear()
            print('Bot: Cache cleared.')
        else:
            print(f'Bot: That text contains{count_vowels(user_text)} vowels.')

if __name__ == '__main__':
    main()