from math import factorial

# Define function to calculate binomial probability
def binomial(x, n, p):
    f = factorial(n) / (factorial(x) * factorial(n - x))
    return f * (p**x) * ((1 - p)**(n - x))

# Input: probability percentage and number of trials
values = list(map(float, input().split()))
p = values[0] / 100  # Convert percentage to probability
n = int(values[1])   # Number of trials

# First rule: No more than 2 rejects (x <= 2)
no_more_than_2_rejects = sum(binomial(i, n, p) for i in range(3))
print(f"{no_more_than_2_rejects:.3f}")

# Second rule: At least 2 rejects (x >= 2)
at_least_2_rejects = sum(binomial(i, n, p) for i in range(2, n + 1))
print(f"{at_least_2_rejects:.3f}")
