page_sequence = [1, 3, 0, 3, 5, 6, 3]
miss = 0
page_hits = 0
frames = []
frame_size = int(input("Enter Frame Size: "))

for page in page_sequence:
    if page not in frames:
        miss += 1
        if len(frames) < frame_size:
            frames.append(page)
        else:
            frames.pop(0)
            frames.append(page)
        print(f"Page {page} -> Fault, Frames: {frames}")
    else:
        page_hits += 1
        print(f"Page {page} -> Hit, Frames: {frames}")

print("\nTotal Page Hits:", page_hits)
print("Total Miss:", miss)
