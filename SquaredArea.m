function area2 = SquaredArea(q0, q1, p)

ab = q0 - p;
ac = q1 - p;
ar = 0.5*norm(cross(ab, ac));

area2 = ar^2;

end


