from typing import override

class Shape:
    def __init__(self, name: str, sides: int) -> None:
        self.name = name
        self.sides = sides

    def describe(self) -> None:
        print(f'{self.name} is {self.sides} sides')

    def shape_method(self) -> None:
        print(f'{self.name}: shape_method()')

class Square(Shape):
    def __init__(self, size: float) -> None:
        super().__init__('Square', 4)
        self.size = size

    @override
    def describe(self) -> None:
        print(f'I am a {self.name} with a size of {self.size}')

def main() -> None:

    square: Square = Square(20)
    square.describe()
    square.shape_method()

if __name__ == '__main__':
    main()