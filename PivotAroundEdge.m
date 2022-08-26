function p = PivotAroundEdge(q0, q1, P)
p = P(1, :);

area2 = SquaredArea(q0, q1, p);

sp = size(P);

for i = 2:sp(1)
    p1 = P(i, :);
    volume = SignedVolume(q0, q1, p, p1);
    if volume < 0
        p = p1;
    elseif volume == 0
        area21 = SquaredArea(q0, q1, p1);
        if area21 > area2
            p = p1;
            area2 = area21;
        end
    end

end


end

