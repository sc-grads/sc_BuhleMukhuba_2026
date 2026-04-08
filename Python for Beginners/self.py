class Fruit:
    def __init__(self, name: str, grams: str) -> None:
        self.name = name
        self.grams = grams

    def eat(self):
        print(f'Eating {self.grams}g of {self.name}')

def main() -> None:
    apple: Fruit = Fruit('Apple', 25)
    print(apple.grams)

    banana: Fruit = Fruit('Banana', 10)
    print(banana.name)

if __name__ == '__main__':
    main()