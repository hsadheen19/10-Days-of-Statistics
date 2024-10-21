# Input: probability as a fraction and the number of trials
probability = list(map(int, input().split()))
p = probability[0] / probability[1]
q = 1 - p
n = int(input())

# Calculate cumulative geometric distribution
result = sum((q ** (i - 1) * p) for i in range(1, n + 1))

# Print the result rounded to 3 decimal places
print(f"{result:.3f}")
