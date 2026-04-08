class Calculator:
    def __init__(self, version: int) -> None:
        self.version = version

    @staticmethod
    def add(*numbers: float) -> float:
        return sum(numbers)

    def get_version(self) -> int:
        return self.version

def main() -> None:

    calc: Calculator = Calculator(version=1)
    result: float = calc.add(1, 2, 3, 4)
    print(result)
    
if __name__ == '__main__':
    main()