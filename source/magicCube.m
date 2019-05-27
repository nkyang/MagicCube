%% 创建一个n×n的魔方
% initialization of a n*n Rubik's Cube
function t = magicCube(n)
x = [-1 -1  0  0];
y = [-1  0  0 -1];
z = [0 0 0 0];
c = colormap(jet(6));
t = gobjects(n,n,n); 
% line Width
lw = 0.25;
for ii = 1:n
    for jj = 1:n
        for kk = 1:6
            switch kk
                case 1
                    t(ii,jj,1) = hgtransform('Parent',gca);
                    patch(x+ii-n/2,y+jj-n/2,z-n/2,c(kk,:),'Parent',t(ii,jj,1),'LineWidth',lw);
                case 2
                    t(ii,1,jj) = hgtransform('Parent',gca);
                    patch(x+ii-n/2,z-n/2,y+jj-n/2,c(kk,:),'Parent',t(ii,1,jj),'LineWidth',lw);
                case 3
                    t(1,ii,jj) = hgtransform('Parent',gca);
                    patch(z-n/2,x+ii-n/2,y+jj-n/2,c(kk,:),'Parent',t(1,ii,jj),'LineWidth',lw);
                case 4
                    t(n,ii,jj) = hgtransform('Parent',gca);
                    patch(z+n/2,x+ii-n/2,y+jj-n/2,c(kk,:),'Parent',t(n,ii,jj),'LineWidth',lw);
                case 5
                    t(ii,n,jj) = hgtransform('Parent',gca);
                    patch(x+ii-n/2,z+n/2,y+jj-n/2,c(kk,:),'Parent',t(ii,n,jj),'LineWidth',lw);
                case 6
                    t(ii,jj,n) = hgtransform('Parent',gca);
                    patch(x+ii-n/2,y+jj-n/2,z+n/2,c(kk,:),'Parent',t(ii,jj,n),'LineWidth',lw);
            end
        end
    end
end
end