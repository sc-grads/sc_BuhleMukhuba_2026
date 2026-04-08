from abc import ABC, abstractmethod

class Appliance(ABC):
    def __init__(self, brand: str, version: int) -> None:
        self.brand = brand
        self.version = version
        self.is_turned_on: bool = False

    @abstractmethod
    def turn_on(self) -> None:
        ...

    @abstractmethod
    def turn_off(self) -> None:
        ...

class Lamp(Appliance):
    def __init__(self, brand: str, version: int) -> None:
        super().__init__(brand, version)

    def turn_on(self) -> None:
        if self.is_turned_on:
            print(f'{self.brand} is already turned on')
        else:
            self.is_turned_on = True
            print(f'{self.brand} is now turned on')

    def turn_off(self) -> None:
        if self.is_turned_on:
            self.is_turned_on = False
            print(f'{self.brand} is now turned off')
        else:
            print(f'{self.brand} is already turned off')

def main() -> None:

    lamp: lamp = Lamp('BMW', 2)

    lamp.turn_on()
    lamp.turn_on()
    lamp.turn_off()
    lamp.turn_off()
    
if __name__ == '__main__':
    main()