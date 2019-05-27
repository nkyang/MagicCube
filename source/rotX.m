%% X轴方向进行逆时针旋转
% X-axis counterclockwise rotation
function t = rotX(t,ids)
N = length(t);
Rx = makehgtform('xrotate',pi/2);
for x = ids
    for y = 1:N
        for z = 1:N
            if isgraphics(t(x,y,z),'hgtransform')
                t(x,y,z).Matrix = Rx*t(x,y,z).Matrix;
            end
        end
    end
    t(x,:,:) = rot90(squeeze(t(x,:,:)));
end