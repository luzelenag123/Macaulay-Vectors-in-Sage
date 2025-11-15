load("lex_ideals.sage")
load("m-vectors.sage")

# Bounds on the number of splitting faces of a ball with h-vector h. 

# Derived from Peeva's cancellation technique.
def lower_bound_on_splitting_faces(h):
    d = len(h) - 1
    n = h[1] + d
    betti_table = get_betti_table(h)
    return beta(betti_table, n, n+1) - beta(betti_table, n-1, n+1)

# Nagel's upper bound.
def upper_bound_on_splitting_faces(h):
    d = len(h) - 1
    g_1 = h[1] - h[d-1]
    g_2 = h[2] - h[d-2]
    return g_1 - macaulay_prev(g_2,2)


# Examples
h = [1, 5, 7, 10, 5, 3, 0]
print(lower_bound_on_splitting_faces(h))
print(upper_bound_on_splitting_faces(h))
