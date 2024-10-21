size = int(input())
numbers = list(map(int, input().split()))
weights = list(map(int, input().split()))

sum_items = 0
for index in range(size):
    sum_items += numbers[index] * weights[index]

print(round(sum_items/sum(weights), 1))
