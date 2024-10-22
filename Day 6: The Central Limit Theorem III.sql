import math

# Set data
n = float(input())
mean = float(input())
std = float(input())
percent_ci = float(input())
value_ci = float(input())

# Formula ci
ci = value_ci * (std / math.sqrt(n))

# Result
print(round(mean - ci, 2))
print(round(mean + ci, 2))
