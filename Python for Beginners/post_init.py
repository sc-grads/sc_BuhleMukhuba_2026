from dataclasses import dataclass, field

@dataclass
class Fruit:
    name: str
    grams: float
    price_per_kg: float
    total_price: float = field(init=False)

    def __post_init__(self) -> None:
        self.total_price = self.price_per_kg * (self.grams / 1000)

    def describe(self) -> None:
        print(f'{self.grams}g of {self.name} costs R{self.total_price}.')

def main() -> None:

    apple: Fruit = Fruit('Apple', 1500, 5)
    orange: Fruit = Fruit('Orange', 2500, 10)

    print(orange)
    print(apple)

    apple.describe()
    orange.describe()

if __name__ == '__main__':
    main()