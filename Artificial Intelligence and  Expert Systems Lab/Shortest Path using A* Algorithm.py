import heapq
import math
from collections import defaultdict


H = {
    "H": 0.46, "GR": 0.21, "PR": 0.47, "PS": 0.47,
    "KB": 0.82, "KBM": 0.89, "F": 0.24, "WRB": 0.81,
    "D32": 1.46, "MMA": 1.86, "KHB": 0.91, "UAP": 0.00
}


edges = {
    ("H", "GR"): 0.35,
    ("GR", "UAP"): 0.21,
    ("H", "PR"): 0.07,
    ("PR", "PS"): 0.27,
    ("PR", "KB"): 0.35,
    ("PS", "GR"): 0.26,
    ("UAP", "F"): 0.40,
    ("KBM", "F"): 0.70,
    ("H", "KBM"): 0.40,
    ("KB", "KBM"): 0.23,
    ("PS", "WRB"): 0.35,
    ("WRB", "KHB"): 0.70,
    ("WRB", "D32"): 0.65,
    ("D32", "MMA"): 0.90,
    ("KHB", "F"): 1.00,
    ("KHB", "MMA"): 1.00
}


adjacency = defaultdict(list)
for (u, v), w in edges.items():
    adjacency[u].append((v, w))
    adjacency[v].append((u, w))

def reconstruct_path(came_from, node):
    path = [node]
    while node in came_from:
        node = came_from[node]
        path.append(node)
    return list(reversed(path))

def astar(start, goal):
    g_score = defaultdict(lambda: math.inf)
    g_score[start] = 0.0
    open_set = []
    heapq.heappush(open_set, (g_score[start] + H[start], g_score[start], start))
    came_from = {}
    visited = set()
    log = []
    iteration = 1

    while open_set:
        f_current, g_current, current = heapq.heappop(open_set)
        if g_current != g_score[current]:
            continue
        visited.add(current)
        path_str = " -> ".join(reconstruct_path(came_from, current))
        log.append({
            "iter": iteration,
            "path": path_str,
            "g": round(g_score[current], 2),
            "h": round(H[current], 2),
            "f": round(g_score[current] + H[current], 2)
        })
        iteration += 1
        if current == goal:
            return reconstruct_path(came_from, current), g_score[current], log
        for neighbor, weight in adjacency[current]:
            if neighbor in visited:
                continue
            tentative_g = g_score[current] + weight
            if tentative_g < g_score[neighbor]:
                g_score[neighbor] = tentative_g
                came_from[neighbor] = current
                heapq.heappush(open_set, (g_score[neighbor] + H[neighbor], g_score[neighbor], neighbor))
    return None, math.inf, log

def print_log(log):
    print("\nIteration log (stops when goal is reached):")
    print(f"{'Iter':<5} {'Path':<40} {'g':<6} {'h':<6} {'f':<6}")
    print("-" * 70)
    for entry in log:
        print(f"{entry['iter']:<5} {entry['path']:<40} {entry['g']:<6} {entry['h']:<6} {entry['f']:<6}")

if __name__ == "__main__":
    start_node = "H"
    goal_node = "UAP"
    path, cost, log = astar(start_node, goal_node)
    print(f"Best path: {' -> '.join(path) if path else 'No path found'}")
    print(f"Total cost: {round(cost, 2)} km")
    print_log(log)
