from dataclasses import dataclass, field, InitVar

@dataclass
class Fruit:
    name: str
    grams: float
    price_per_kg: float

    @property
    def total_price(self) -> float:
        return (self.grams/ 1000) * self.price_per_kg

    def describe(self) -> None:
        print(f'{self.grams}g of {self.name} costs R{self.total_price}.')

def main() -> None:

    apple: Fruit = Fruit('Apple', 1500, 5)
    orange: Fruit = Fruit('Orange', 2500, 10)
    passion: Fruit = Fruit('Passion', 100, 50, is_rare=True)
    print(apple)
    apple.price_per_kg = 20
    print(apple)
    apple.describe()

if __name__ == '__main__':
    main()