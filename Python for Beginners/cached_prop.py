import time
from functools import cached_property

class DataSet:
    def __init__(self, data: list[float]) -> None:
        self.data = data

    def show_data(self) -> None:
        print(self.data)

    @cached_property
    def sum(self) -> float:
        print('Calculating sum...')
        time.sleep(2)
        return sum(self.data)

    def mean(self) -> float:
        print('Calculating mean...')
        time.sleep(2)
        return sum(self.data) / len(self.data)

def main() -> None:
    ds: DataSet = DataSet([1.5, 2.5, 10, 7])
    ds.show_data()

    while True:
        user_input: str = input('You: ').lower()

        if user_input=='clear sum':
            del ds.sum
        elif user_input=='clear mean':
            del ds.mean
        elif user_input=='mean':
            print(ds.mean)
        elif user_input=='sum':
            print(ds.sum)
        else:
            print('Unknown command')

if __name__ == '__main__':
    main()