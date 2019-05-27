%% Y轴方向进行顺时针旋转
% Y-axis clockwise rotation
function t = rotY_(t,ids)
N = length(t);
Ry = makehgtform('yrotate',pi/2);
for y = ids
    for x = 1:N
        for z = 1:N
            if isgraphics(t(x,y,z),'hgtransform')
                t(x,y,z).Matrix = Ry*t(x,y,z).Matrix;
            end
        end
    end
    t(:,y,:) = rot90(squeeze(t(:,y,:)),3);
end
end