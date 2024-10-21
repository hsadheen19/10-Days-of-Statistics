import math
def mean(data):
    return sum(data) / len(data)

# Define function to calculate standard deviation
def stddev(data):
    mu = mean(data)
    variance = sum((x - mu) ** 2 for x in data) / len(data)
    return math.sqrt(variance)

# Input: size and the numbers
size = int(input())
numbers = list(map(int, input().split()))

# Get and print standard deviation rounded to 1 decimal place
print(f"{stddev(numbers):.1f}")
