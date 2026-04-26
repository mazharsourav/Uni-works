import os

def parse_block(lines):
    g = {}
    for line in lines:
        l, r = line.split("->")
        l = l.strip()
        for p in r.split("|"):
            p = p.strip()
            if l not in g:
                g[l] = []
            g[l].append(p)
    return g


def read_problems(file):
    problems = []
    block = []

    with open(file, 'r', encoding='utf-8') as f:
        for raw in f:
            line = raw.strip()
            if not line:
                if block:
                    problems.append(parse_block(block))
                    block = []
                continue
            block.append(line)

    if block:
        problems.append(parse_block(block))

    return problems

def eliminate_direct_left_recursion(g):
    ng = {}
    for nt in g:
        a = []
        b = []

        for p in g[nt]:
            if p.startswith(nt):
                a.append(p[len(nt):])
            else:
                b.append(p)

        if a:
            nt2 = nt + "'"
            ng[nt] = []
            ng[nt2] = []
            for x in b:
                ng[nt].append(x + nt2)
            for y in a:
                ng[nt2].append(y + nt2)
            ng[nt2].append("ε")
        else:
            ng[nt] = g[nt]

    return ng

def eliminate_indirect_left_recursion(g):
    nts = list(g.keys())

    for i in range(len(nts)):
        ai = nts[i]

        for j in range(i):
            aj = nts[j]
            np = []
            for p in g[ai]:
                if p.startswith(aj):
                    for x in g[aj]:
                        np.append(x + p[len(aj):])
                else:
                    np.append(p)
            g[ai] = np

        g = eliminate_direct_left_recursion(g)

    return g

def print_block(g):
    for nt in g:
        out = " | ".join(g[nt])
        print(f"  {nt} -> {out}")


def print_problem_solution(i, original, transformed):
    print("\n" + "=" * 56)
    print(f"Problem {i:02d}")
    print("-" * 56)
    print("Input:")
    print_block(original)
    print("Solution:")
    print_block(transformed)
    print("=" * 56)


path = os.path.join(os.path.dirname(__file__), "Test_Case.txt")
problems = read_problems(path)

for i, g in enumerate(problems, start=1):
    new_g = eliminate_indirect_left_recursion(g)
    print_problem_solution(i, g, new_g)