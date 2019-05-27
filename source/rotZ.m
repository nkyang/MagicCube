%% Z轴方向进行逆时针旋转
% Z-axis counterclockwise rotation
function t = rotZ(t,ids)
N = length(t);
Rz = makehgtform('zrotate',pi/2);
for z = ids
    for x = 1:N
        for y = 1:N
            if isgraphics(t(x,y,z),'hgtransform')
                t(x,y,z).Matrix = Rz*t(x,y,z).Matrix;
            end
        end
    end
    t(:,:,z) = rot90(squeeze(t(:,:,z)));
end
end