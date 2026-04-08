from typing import Final

AUTHOR: Final[str] = ("Buhle")
VERSION: Final[str] = "1.0.0"

def greet(name: str) -> None:
    print(f'Hello {name}')
