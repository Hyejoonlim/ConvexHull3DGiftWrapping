function triface(p1, p2, p3)

h=patch('Faces',1:3,'Vertices',[p1;p2;p3]);
set(h,'FaceColor','r','EdgeColor','k','LineWidth',2,'FaceAlpha',0.5)
axis equal vis3d
xlabel('x','FontSize',10)
ylabel('y','FontSize',10)
zlabel('z','FontSize',10)
pause(.2)
hold on


end