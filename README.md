# Scheme Guessing Game

This project is a guessing game implemented in Scheme. Players guess a number between 1 and 10, and the game tracks their score (number of guesses). Players can continue to play multiple rounds until they choose to quit, at which point a summary table is displayed with each player's name and guess count.

## Game Rules
1. The player is prompted to guess a number between 1 and 10.
2. After each guess, the game provides feedback (higher or lower) until the player guesses correctly.
3. Upon guessing correctly, the player enters their name, and the game logs the number of attempts.
4. The player can choose to play again or quit.
5. Upon quitting, a summary table shows each player's name and the number of guesses.

## Example Interaction
Guess a number from 1 to 10:
Enter q to quit or any other key to continue: x Enter guess 5 Higher... Enter guess 7 Lower... Enter guess 6 Correct! 3 guesses... Please enter your name: "Jack" Good game, Jack Enter q to quit or any other key to continue: x Enter guess 5 Higher... Enter guess 6 Correct! 2 guesses... Please enter your name: "Jan" Good game, Jan Enter q to quit or any other key to continue: q
Jack 3
Jan 2


## Code Structure
- **Recursion**: Used to manage repeated gameplay and score logging.
- **Score Tracking**: Logs player names and guess counts, then displays a summary upon quitting.
- **Interactive Prompts**: Continuously prompts players for guesses and play options.

## Requirements
- Scheme interpreter (e.g., Racket) required to run the game.

## License
This project is open-source and available for modification.

---

Enjoy the game!
