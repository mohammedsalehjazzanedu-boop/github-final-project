#!/bin/bash
# simple-interest.sh
# Calculates simple interest given a principal amount, interest rate, and time period.
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "----- Simple Interest Calculator -----"

read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (%): " rate
read -p "Enter the time period (in years): " time

# Perform the calculation using awk for floating-point support
simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "---------------------------------------"
echo "Principal amount : $principal"
echo "Interest rate    : $rate%"
echo "Time period      : $time year(s)"
echo "Simple Interest  : $simple_interest"
echo "---------------------------------------"
