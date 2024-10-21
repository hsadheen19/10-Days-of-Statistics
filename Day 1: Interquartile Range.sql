def median(data):
    size = len(data)
    mid = size // 2
    if size % 2 == 0:
        return (data[mid - 1] + data[mid]) / 2
    else:
        return data[mid]

# Input: size, elements, frequencies
size = int(input())
elements = list(map(int, input().split()))
frequencies = list(map(int, input().split()))

# Create the new data set based on frequencies
new_data = []
for elem, freq in zip(elements, frequencies):
    new_data.extend([elem] * freq)

# Sort the new data
new_data.sort()

# Split the data into two halves
n = len(new_data)
if n % 2 == 0:
    lower_half = new_data[:n // 2]
    upper_half = new_data[n // 2:]
else:
    lower_half = new_data[:n // 2]
    upper_half = new_data[n // 2 + 1:]

# Calculate Q1 and Q3 (medians of the lower and upper halves)
q1 = median(lower_half)
q3 = median(upper_half)

# Output the interquartile range
print(f"{q3 - q1:.1f}")
