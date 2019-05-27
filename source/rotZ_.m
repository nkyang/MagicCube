%% Z轴方向进行顺时针旋转
% Z-axis clockwise rotation
function t = rotZ_(t,ids)
N = length(t);
Rz = makehgtform('zrotate',-pi/2);
for z = ids
    for x = 1:N
        for y = 1:N
            if isgraphics(t(x,y,z),'hgtransform')
                t(x,y,z).Matrix = Rz*t(x,y,z).Matrix;
            end
        end
    end
    t(:,:,z) = rot90(squeeze(t(:,:,z)),3);
end