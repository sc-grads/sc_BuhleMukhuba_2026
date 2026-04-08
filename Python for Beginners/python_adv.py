#MyPy
items: list[str] = ['cup', 'apple', True, [1, 2, 3]]

#Walrus Operator
def description(numbers: list[int]) -> dict:

    details: dict = {'length': (n_length :=len(numbers)),
                  'sum': (n_sum := sum(numbers)),
                  'mean': n_sum/n_length
                  }

    return details

def main() -> None:
    numbers: list[int] = [1, 20, 35, 200, -4, 7]
    print(description(numbers))

if __name__ == '__main__':
    main()