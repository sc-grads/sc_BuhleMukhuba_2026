from typing import Self

class Car:
    def __init__(self, brand: str, car_id: int, colour: str) -> None:
        self.brand = brand
        self.car_id = car_id
        self.colour = colour

    def __eq__(self, other:Self) -> bool:
        print('Current:', self.__dict__)
        print('Other:', other.__dict__)
        return self.__dict__ == other.__dict__

def main() -> None:
    car1: Car = Car('BMW', 1, 'Blue')
    car2: Car = Car('BMW', 1, 'Blue')

    print(car1 == car2)

    print(car1)
    print(car2)

if __name__ == '__main__':
    main()