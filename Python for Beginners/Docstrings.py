"""
This is a docstring
"""

class User:
    """
    Base class for users
    """
    def __init__(self, name: str, user_id: int) -> None:
        self.name = name
        self.user_id = user_id

    def show_id(self) -> None:
        """
        Shows user id
        """
        print(self.user_id)

        