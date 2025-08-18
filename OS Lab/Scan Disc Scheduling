request_sequence = [11, 34, 41, 50, 52, 69, 70, 114]
head = int(input("Pick a head--> "))
direction = input("Enter direction (left/right): ").lower()
total_seek = 0
current = head
head_order = [current]

requests = sorted(request_sequence)

if direction == "right":
    right = [r for r in requests if r >= current]
    left = [r for r in requests if r < current][::-1]
else:
    left = [r for r in requests if r <= current][::-1]
    right = [r for r in requests if r > current]


for track in (right if direction == "right" else left):
    distance = abs(current - track)
    print(f"Move from {current} to {track}, seek = {distance}")
    total_seek += distance
    current = track
    head_order.append(current)


for track in (left if direction == "right" else right):
    distance = abs(current - track)
    print(f"Move from {current} to {track}, seek = {distance}")
    total_seek += distance
    current = track
    head_order.append(current)

print("Head move order:", head_order)
print("Total seek time =", total_seek)
