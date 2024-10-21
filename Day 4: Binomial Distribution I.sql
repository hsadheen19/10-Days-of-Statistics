from math import factorial

# Define function to calculate binomial probability
def binomial(x, n, p):
    f = factorial(n) / (factorial(x) * factorial(n - x))
    return f * (p**x) * ((1 - p)**(n - x))

# Input: probabilities
values = list(map(float, input().split()))
p = values[0] / (values[0] + values[1])  # Probability of success
n = 6  # Number of trials

# Calculate cumulative probability for x = 3, 4, 5, 6
result = sum(binomial(x, n, p) for x in range(3, 7))

# Print the result rounded to 3 decimal places
print(f"{result:.3f}")
