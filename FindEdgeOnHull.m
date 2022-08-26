function [p, q] = FindEdgeOnHull(P)
p = BottomMostLeftMostBackMost(P);
q  = p;

sp = size(P);
for i = 1:sp(1)
    r = P(i, :);
    if q(3) == r(3) && q(2) == r(2) && q(1) < r(1)
        q = r;
    end
end
if isequal(q, p) == 1
    q = p + [1, 0, 0];
end
q = PivotAroundEdge(p, q, P);

end
