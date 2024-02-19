%get the RGB for each color from internet.
GreenColor = [0 .51 .25];
WhiteColor = [1 1 1];
BlackColor = [0 0 0];
RedColor = [.698 .132 .203];

Width = 800;
Hight = 500;

figure('position',[410,180,Width,Hight]);

rectangle('position',[0,0,Width,Hight],'facecolor',GreenColor);
hold on;
rectangle('position',[0,(Hight/3),Width,(Hight/3)],'facecolor',WhiteColor);
rectangle('position',[0,2*(Hight/3),Width,(Hight/3)],'facecolor',BlackColor);

%For Triangle
% (x1,y1) = (0,0)
% (x2,y2) = (Width/2,Hight/2)
% (x3,y3) = (0,Hight)
TriangleX = [0 Width/2 0];
TriangleY = [0 Hight/2 Hight];
fill(TriangleX,TriangleY,RedColor);

