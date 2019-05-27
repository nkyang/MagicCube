N = 32;
figure()
ax = gca;
ax.Box = 'off';
axis(ax,'equal','off',[-N,N,-N,N,-N,N]/2);
ax.Projection = 'perspective';
t = magicCube(N);

imgFile = fullfile(pwd,'imgs','input','sc.jpg');
data = imread(imgFile);
data = rgb2gray(data);
data = data>240;
data = imresize(data,[N-2,N-2]);
for ii = 1:N-2
    ids = N-find(~data(ii,:));
    t = rotZ_(t,N-ii);
    t = rotY(t,ids);
    t = rotZ(t,N-ii);
    t = rotY_(t,ids);
end