page_sequence = [7, 0, 1, 2, 0, 3, 0, 4, 2, 3, 0]
miss = 0
page_hits = 0
frames = []
usage = [] 

frame_size = int(input("Enter Frame Size: "))

for page in page_sequence:
    if page not in frames:
        miss += 1
        if len(frames) < frame_size:
            frames.append(page)
        else:
            lru = usage.pop(0)
            frames.remove(lru)
            frames.append(page)
        if page in usage:
            usage.remove(page)
        usage.append(page)
        print(f"Page {page} -> Fault, Frames: {frames}")
    else:
        page_hits += 1
        usage.remove(page)
        usage.append(page)
        print(f"Page {page} -> Hit, Frames: {frames}")

print("\nTotal Page Hits:", page_hits)
print("Total Miss:", miss)
