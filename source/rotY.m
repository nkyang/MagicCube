%% Y轴方向进行逆时针旋转
% Y-axis counterclockwise rotation
function t = rotY(t,ids)
N = length(t);
Ry = makehgtform('yrotate',-pi/2);
for y = ids
    for x = 1:N
        for z = 1:N
            if isgraphics(t(x,y,z),'hgtransform')
                t(x,y,z).Matrix = Ry*t(x,y,z).Matrix;
            end
        end
    end
    t(:,y,:) = rot90(squeeze(t(:,y,:)));
end
end