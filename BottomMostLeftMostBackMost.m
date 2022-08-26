function p = BottomMostLeftMostBackMost(P)
% Bottom Most - Minimum z

p = minCord(P, 3);
sp = size(p);

if sp(1) > 1

    % Left Most - Minimum y
    p = minCord(p, 2);
    sp = size(p);

    if sp(1) > 1
        % Back Most - Minimum x
        p = minCord(p, 1);
    end

   
end

end