#!/bin/bash

# Function to perform addition
addition() {
  echo "Enter the first number: "
  read num1
  echo "Enter the second number: "
  read num2
  result=$((num1 + num2))
  echo "The result of addition is: $result"
}

# Function to perform subtraction
subtraction() {
  echo "Enter the first number: "
  read num1
  echo "Enter the second number: "
  read num2
  result=$((num1 - num2))
  echo "The result of subtraction is: $result"
}

# Function to perform multiplication
multiplication() {
  echo "Enter the first number: "
  read num1
  echo "Enter the second number: "
  read num2
  result=$((num1 * num2))
  echo "The result of multiplication is: $result"
}

# Function to perform division
division() {
  echo "Enter the dividend: "
  read num1
  echo "Enter the divisor: "
  read num2

  if [ "$num2" -eq 0 ]; then
    echo "Division by zero is not allowed."
  else
    result=$(bc <<< "scale=2; $num1 / $num2")
    echo "The result of division is: $result"
  fi
}

# Main menu
while true; do
  echo "Choose an operation:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"

  read choice

  case $choice in
    1)
      addition
      ;;
    2)
      subtraction
      ;;
    3)
      multiplication
      ;;
    4)
      division
      ;;
    5)
      echo "Exiting the program."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter a valid option."
      ;;
  esac
done
