function GiftWrap(P)
% Vert - vertices
% markEdge - Edges Processed
% H - Hull  Q - Edges for pivotinf
vert = [];
[p, q, r] = FindTriangleOnHull(P);
Q = [q, r;
     r, q;
     p, r];
H = [p, q, r];
vert(end+1, :) = p;
vert(end+1, :) = q;
vert(end+1, :) = r;

triface(p, q, r)
sq = size(Q);
markEdge = [];

while sq(1) > 0

    sq = size(Q);
    
    if sq(1) >  0
       e = Q(end, :);
    else
        break
    end


    Q(end, :) = [];
    alre = ismember(e,markEdge);

    % For new edges find triangles
   if isequal(alre, ones(1,6)) == 0
            
            markEdge(end+1, :) = e;

            q = PivotAroundEdge(e(1:3), e(4:6), P);
            vert(end+1, :) = q;
            t = [e(1:3), e(4:6), q];
            triface(e(1:3), e(4:6), q)
            H(end+1, :) = t;
            Q(end+1, :) = [e(4:6), e(1:3)];
            Q(end+1, :) = [q, e(4:6)];
            Q(end+1, :) = [e(1:3), q];

   else 
        % For already processed edges
        q = PivotAroundEdge(e(1:3), e(4:6), P);

        % Find all possible triangles
        t1 = [e(1:3), e(4:6), q];
        t11 = [e(1:3), q, e(4:6)];
        t12 = [e(4:6), q, e(1:3)];
        t13 = [e(4:6), e(4:6), q];
        t14 = [q, e(1:3), e(4:6)];
        t15 = [q, e(4:6), e(1:3)];


        [~, ib1] = ismember(t1, H, 'rows');
        [~, ib2] = ismember(t11, H, 'rows');
        [~, ib3] = ismember(t12, H, 'rows');
        [~, ib4] = ismember(t13, H, 'rows');
        [~, ib5] = ismember(t14, H, 'rows');
        [~, ib6] = ismember(t15, H, 'rows');

        % Make sure none of the triangle is already in the Hull
     if ib1 == 0 && ib2 == 0 && ib3 ==0 && ib4 == 0 && ib5 == 0 && ib6 ==0
              H(end+1,:) = t1;
              triface(t1(1:3), t1(4:6), t1(7:9));
              Q(end+1, :) = [e(4:6), e(1:3)];
              Q(end+1, :) = [q, e(4:6)];
              Q(end+1, :) = [e(1:3), q];
     end
    end



        

end
    % Display edges, the hull and the vertices
    disp('Q')
    disp(Q)
    disp('H')
    disp(H)
    disp('vert')
    disp(vert)

end