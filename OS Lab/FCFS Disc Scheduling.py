def fcfs_disk_scheduling(requests, head):
    total_seek = 0
    current_position = head

    for track in requests:
        total_seek += abs(track - current_position)
        current_position = track

    return total_seek

requests = [0,16,24,43,50,82,100,140,150,170,190,199]
head = int(input("Enter the initial head position: "))

total_seek = fcfs_disk_scheduling(requests, head)
print(f"Total Number of seek Operation is",total_seek)
