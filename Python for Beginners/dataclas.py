from dataclasses import dataclass

@dataclass
class Coin:
    name: str
    value: float
    id: str

def main() -> None:
    bitcoin: Coin = Coin('Bitcoin', 10000, 'BTC')
    bitcoin2: Coin = Coin('Bitcoin', 10000, 'BTC')
    ripple: Coin = Coin('Ripple', 200, 'XRP')

    print(bitcoin)
    print(ripple)

    print( bitcoin == ripple )
    print(bitcoin == bitcoin2)

    print(bitcoin.value == ripple.value)

if __name__ == '__main__':
    main()