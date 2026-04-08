import sys

def welcome_mes() -> None:
    print("Welcome to the grocery list")
    print('Enter:')
    print('-----------------')
    print('1 - Add item')
    print('2 - Remove item')
    print('3 - List all items')
    print('0 - Exit the program')
    print('------------------')

def add_item(item: str, groceries: list[str]) -> None:
    groceries.append(item)
    print(f'{item} added to the grocery list')

def remove_item(item: str, groceries: list[str]) -> None:
    try:
        groceries.remove(item)
        print(f'{item} removed from the grocery list')
    except ValueError:
        print(f'{item} was not found in the grocery list')

def list_items(groceries: list[str]) -> None:
    print('--------LIST---------')
    for i, item in enumerate(groceries, 1):
        print(f'{i} : {item.capitalize()}')

    print('-----------------')

def is_an_option(text: str) -> bool:
    return text in ['1', '2', '3', '0']

def main():
    groceries: list[str] = []

    welcome_mes()
    while True:
        user_input: str = input('Enter your choice: ')

        if not is_an_option(user_input):
            print('Invalid option, please pick a valid option')
            continue

        if user_input == '1':
            new_item: str = input('Enter new item: ')
            add_item(new_item, groceries)
        elif user_input == '2':
            item_to_remove: str = input('Enter item to remove: ')
            remove_item(item_to_remove, groceries)
        elif user_input == '3':
            list_items(groceries)
        elif user_input == '0':
            print('Exiting the program')
            sys.exit()

if __name__ == '__main__':
    main()