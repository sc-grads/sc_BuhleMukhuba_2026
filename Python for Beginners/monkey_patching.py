import time
import logging

class Internet:
    def __init__(self, provider: str) -> None:
        self.provider = provider

    def connect(self) -> None:
        print(f'Connecting to {self.provider}...')
        time.sleep(2)
        print(f'Connected to {self.provider}!')

def test_connect() -> None:
    print('[Provider] You are now connected')

def main() -> None:

    internet: Internet = Internet('Verizon')

    internet.connect() = test_connect()  # type: ignore

    internet.connect()

if __name__ == '__main__':
    main()