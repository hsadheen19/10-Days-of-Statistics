from math import ceil
from typing import List

def median(numbers: List[int]) -> float:
    n = len(numbers)
    if n % 2 == 0:  # Even number of elements
        return (numbers[n // 2 - 1] + numbers[n // 2]) / 2
    else:  # Odd number of elements
        return numbers[n // 2]


n = int(input())  # Input number of elements
data = list(map(int, input().split()))  # Input the list of numbers
data.sort()

# Split data into two halves
left = data[: n // 2]  # Lower half
right = data[ceil(n / 2) :]  # Upper half

# Output the medians
print(int(median(left)))  # Median of the lower half
print(int(median(data)))  # Median of the entire list
print(int(median(right)))  # Median of the upper half
