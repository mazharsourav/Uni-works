processes = [
    ('P1', 0, 11, 2),
    ('P2', 5, 28, 0),
    ('P3', 12, 2, 3),
    ('P4', 2, 10, 1),
    ('P5', 9, 16, 4)
]

processes.sort(key=lambda x: x[1])

completed = []
current_time = 0
results = []

print("Process\tAT\tBT\tPR\tCT\tTAT\tWT")

while len(completed) < len(processes):
    available = [p for p in processes if p[1] <= current_time and p not in completed]

    if available:
        selected = min(available, key=lambda x: x[3])
        pid, at, bt, pr = selected

        ct = current_time + bt
        tat = ct - at
        wt = tat - bt
        results.append((pid, at, bt, pr, ct, tat, wt))
        current_time = ct
        completed.append(selected)
    else:
        current_time += 1

for r in results:
    pid, at, bt, pr, ct, tat, wt = r
    print(f"{pid}\t{at}\t{bt}\t{pr}\t{ct}\t{tat}\t{wt}")


