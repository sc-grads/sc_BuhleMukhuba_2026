from typing import Callable, Any
from functools import wraps

def repeat(number: int) -> Callable:
    """Repeat a function call x amount of times"""

    def decorator(func: Callable) -> Callable:

        @wraps(func)
        def wrapper(*args, **kwargs) -> Any:
            value: Any = None
            for _ in range(number):
                value = func(*args, **kwargs)

            return value

        return wrapper

    return decorator

def greeting(name: str) -> None:
    """A function used to greet people"""

    print(f'Hello {name}!')

def main() -> None:
    greeting('Bob')

if __name__ == '__main__':
    main()