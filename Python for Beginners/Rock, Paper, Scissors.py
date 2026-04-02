import random
import sys

# Step 1: Starting Info
print("Welcome to Rock, Paper, Scissors!")
moves: dict = {"rock": "🪨", "paper": "📃", "scissors": "✂️"}
valid_moves: list[str] = list(moves.keys())

# Step 2: Infinite Loop
while True:
    user_move: str = input("Please enter your move: ").lower()

    if user_move == "quit":
        print("Goodbye")
        sys.exit()

    if user_move not in valid_moves:
        print("Invalid move")
        continue

    ai_move: str = random.choice(valid_moves)

    print("-------")
    print(f"You:{user_move}")
    print(f"AI:{ai_move}")
    print("-------")

    # Check moves

    if user_move == ai_move:
        print("It's a tie")
    elif user_move == "rock" and ai_move == "scissors":
        print("You win")
    elif user_move == "scissors" and ai_move == "paper":
        print("You win")
    elif user_move == "paper" and ai_move == "rock":
        print("You win")
    else:
        print("AI wins...")