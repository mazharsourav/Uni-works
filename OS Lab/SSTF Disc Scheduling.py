request_sequence = [11,34,41,50,52,69,70,114]
head = int(input("Pick a head --> "))

total_seek = 0
current = head
requests = request_sequence.copy()
head_order = [current]

while requests:
    closest = min(requests, key=lambda x: abs(x - current))
    distance = abs(current - closest)
    print(f"Move from {current} to {closest}, seek = {distance}")
    total_seek += distance
    current = closest
    head_order.append(current)
    requests.remove(closest)

print("Head move order:", head_order)
print("Total seek time =", total_seek)
