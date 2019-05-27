function write2gif(fileName,isFirstFrame)
% Default write mode is append
if nargin < 2
    isFirstFrame = 0;
end

[A,map] = rgb2ind(frame2im(getframe),256);

if isFirstFrame
    imwrite(A,map,fileName,'LoopCount',65535,'DelayTime',0);
else
    imwrite(A,map,fileName,'WriteMode','append','DelayTime',0);
end
end

