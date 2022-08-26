%% Test 1
figure(1)
P = [3,4,5;9,0,1;4,5,7;0,1,5;8,1,4; 0 9 -1; -5 -7 8; -3 8 11; 0 9 3; 8 7 4];
% Plotting the original points
scatter3(P(:,1), P(:,2), P(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(P)

%% Test 2
figure(2)
P2 = [0, 4, -17;1,2,1;3,4,5;9,0,1;4,5,7;0 0 -1; 0,1,5;8,1,4; 0 9 -1; -5 -7 8; -3 8 11; 1 2 -1; 0 7 5; 13 -7 8; -5 -5 10];
% Plotting the original points
scatter3(P2(:,1), P2(:,2), P2(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(P2)

%% Test 3
figure(3)
a = -15;
b = 15;
M(:,1) = (b-a).*rand(100,1) + a;
M(:,2) = (b-a).*rand(100,1) + a;
M(:,3) = (b-a).*rand(100,1) + a;
% Plotting the original points
scatter3(M(:,1), M(:,2), M(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(M)


%% Test 4
figure(4)
a = -37;
b = 65;
N(:,1) = (b-a).*rand(1000,1) + a;
N(:,2) = (b-a).*rand(1000,1) + a;
N(:,3) = (b-a).*rand(1000,1) + a;
% Plotting the original points
scatter3(N(:,1), N(:,2), N(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(N)

%% Test 5
figure(5)
a = -10;
b = 10;
O(:,1) = (b-a).*rand(1000,1) + a;
O(:,2) = (b-a).*rand(1000,1) + a;
O(:,3) = (b-a).*rand(1000,1) + a;
% Plotting the original points
scatter3( O(:,1), O(:,2), O(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(O)

%% Test 6
figure(6)
a = -20;
b = 50;
R(:,1) = (b-a).*rand(1000,1) + a;
R(:,2) = (b-a).*rand(1000,1) + a;
R(:,3) = (b-a).*rand(1000,1) + a;

% Plotting the original points
scatter3(R(:,1), R(:,2), R(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(R)

%% Test 7
figure(7)
a = -100;
b = 78;
S(:,1) = (b-a).*randn(10000,1) + a;
S(:,2) = (b-a).*randn(10000,1) + a;
S(:,3) = (b-a).*randn(10000,1) + a;

% Plotting the original points
scatter3(S(:,1), S(:,2), S(:,3), 'filled', 'b')
hold on
% ConvexHull Algorithm
GiftWrap(S)
