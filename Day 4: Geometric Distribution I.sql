# Input: probability as a fraction and the number of trials
probability = list(map(int, input().split()))
p = probability[0] / probability[1]
n = int(input())

# Calculate the geometric distribution
result = (1 - p) ** (n - 1) * p

# Print the result rounded to 3 decimal places
print(f"{result:.3f}")
