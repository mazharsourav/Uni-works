processes = [
    ('P1', 0, 5),
    ('P2', 1, 3),
    ('P3', 2, 1),
    ('P4', 3, 2),
    ('P5', 4, 3)
]

time_quantum = 2

processes.sort(key=lambda x: x[1])

n = len(processes)
remaining_bt = {p[0]: p[2] for p in processes}
arrival_times = {p[0]: p[1] for p in processes}
completed = {}
queue = []
current_time = 0
total_waiting_time = 0

print("Process\tAT\tBT\tCT\tTAT\tWT")

while len(completed) < n:
    for p in processes:
        if p[1] <= current_time and p[0] not in queue and p[0] not in completed:
            queue.append(p[0])

    if queue:
        pid = queue.pop(0)
        exec_time = min(time_quantum, remaining_bt[pid])
        current_time += exec_time
        remaining_bt[pid] -= exec_time


        for p in processes:
            if p[1] <= current_time and p[0] not in queue and p[0] not in completed and p[0] != pid:
                queue.append(p[0])


        if remaining_bt[pid] > 0:
            queue.append(pid)
        else:
            completion_time = current_time
            turnaround_time = completion_time - arrival_times[pid]
            burst_time = [p[2] for p in processes if p[0] == pid][0]
            waiting_time = turnaround_time - burst_time
            total_waiting_time += waiting_time
            completed[pid] = (arrival_times[pid], burst_time, completion_time, turnaround_time, waiting_time)
    else:
        current_time += 1


for pid in ['P1', 'P2', 'P3', 'P4', 'P5']:
    at, bt, ct, tat, wt = completed[pid]
    print(f"{pid}\t{at}\t{bt}\t{ct}\t{tat}\t{wt}")


avg_wt = total_waiting_time / n
print(f"\nAverage Waiting Time: {avg_wt:.2f}")
