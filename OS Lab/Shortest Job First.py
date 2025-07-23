processes = [
    ('P1', 0, 12),
    ('P2', 2, 4),
    ('P3', 3, 6),
    ('P4', 8, 5)
]


processes.sort(key=lambda x: x[1])

n = len(processes)
completed = []
current_time = 0
total_waiting_time = 0

print("Process\tAT\tBT\tCT\tTAT\tWT")

while len(completed) < n:
    available = [p for p in processes if p[1] <= current_time and p not in completed]

    if available:
        shortest = min(available, key=lambda x: x[2])
        pid, arrival, burst = shortest

        if current_time < arrival:
            current_time = arrival

        completion_time = current_time + burst
        turnaround_time = completion_time - arrival
        waiting_time = turnaround_time - burst
        total_waiting_time += waiting_time

        print(f"{pid}\t{arrival}\t{burst}\t{completion_time}\t{turnaround_time}\t{waiting_time}")

        current_time = completion_time
        completed.append(shortest)
    else:
        current_time += 1

avg_wt = total_waiting_time / n
print(f"\nAverage Waiting Time: {avg_wt:.2f}")
