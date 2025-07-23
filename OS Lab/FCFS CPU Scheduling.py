processes = [
    ('P0', 0, 4),
    ('P1', 2, 3),
    ('P2', 3, 2),
    ('P3', 5, 1)
]

processes.sort(key=lambda x: x[1])

current_time = 0
total_waiting_time = 0

print("Process\tAT\tBT\tCT\tTAT\tWT")
results = []


for pid, arrival, burst in processes:
    if current_time < arrival:
        current_time = arrival
        
    completion_time = current_time + burst
    turnaround_time = completion_time - arrival
    waiting_time = turnaround_time - burst
    total_waiting_time += waiting_time

    
    results.append((pid, arrival, burst, completion_time, turnaround_time, waiting_time))
    current_time = completion_time


for result in results:
    pid, at, bt, ct, tat, wt = result
    print(f"{pid}\t{at}\t{bt}\t{ct}\t{tat}\t{wt}")


avg_waiting_time = total_waiting_time / len(processes)
print(f"\nAverage Waiting Time: {avg_waiting_time:.2f}")
