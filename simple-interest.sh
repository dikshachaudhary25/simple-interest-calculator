#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple Interest Formula: SI = (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple interest: $interest"
}

# Main function
main() {
    echo "Simple Interest Calculator"

    # Read inputs from the user
    read -p "Enter principal amount: " principal
    read -p "Enter interest rate: " rate
    read -p "Enter time period (in years): " time

    # Calculate and display the simple interest
    calculate_interest $principal $rate $time
}

# Execute the main function
main
