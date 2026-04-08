wifi_enabled: bool = True
has_electric: bool = True
has_subscription: bool = True

requirements: list[bool] = [wifi_enabled, has_electric, has_subscription]

if all(requirements):
    print('Connected to the internet')

