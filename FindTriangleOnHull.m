function [p, q, r] = FindTriangleOnHull(P)
[p, q] = FindEdgeOnHull(P);
 r = PivotAroundEdge(p, q, P);
end