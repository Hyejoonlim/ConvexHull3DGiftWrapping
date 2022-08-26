function pts = minCord(P, cord)

% P set of points to be test
% Cordinates to be tested 
% cord = 1 --> x
% cord = 2 --> y
% cord = 3 --> z

testCor = P(:,cord);
imax = length(testCor);

minC = min(testCor);
k = 1;

  for j = 1:imax
     if testCor(j) == minC
        pts(k, :) = P(j, :);
        ind(k) = j;
        k = k+1;
     end
  end

  li = length(ind);
  for l = 1:li
      testCor(l) = [];
  end

end