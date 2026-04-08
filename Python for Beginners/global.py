from typing import Any

text: str = 'hello world'
my_list: list[int] = [1, 2, 3]

def func() -> None:
    ...

print(globals())

my_globals: dict[str, Any] = dict(globals())
print(my_globals)

