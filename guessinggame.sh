
#!/bin/bash

# Function to get the file count
get_file_count() {
  ls -1 | wc -l
}

# Main game function
guessing_game() {
  local file_count=$(get_file_count)
  local user_guess=-1

  echo "Welcome to the Guessing Game!"
  echo "Guess how many files are in the current directory:"

  while [[ $user_guess -ne $file_count ]]; do
    read -p "Enter your guess: " user_guess

    if [[ $user_guess -lt $file_count ]]; then
      echo "Too low, try again!"
    elif [[ $user_guess -gt $file_count ]]; then
      echo "Too high, try again!"
    fi
  done

  echo "Congratulations! You guessed the correct number of files."
}

