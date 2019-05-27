% N is the order of Rubik's Cube
% it takes about ten minutes to initialize a 70*70 Rubik's Cube
N = 70;
%% axis setting
figure()
ax = gca;
ax.Box = 'off';
axis(ax,'equal','off',[-N,N,-N,N,-N,N]/2);
ax.Projection = 'perspective';
% initialize a N*N Rubik's Cube
t = magicCube(N);
% write to a gif file
gifFile1 = fullfile(pwd,'imgs','output','1.gif');
write2gif(gifFile1,1);
%% image pre-processing
imgFile = fullfile(pwd,'imgs','input','NKlogo.png');
data = imread(imgFile);
data = rgb2gray(data);
data = imbinarize(data);
data = imresize(data,[N-2,N-2]);
for ii = 1:N-2
    ids = N-find(~data(ii,:));
    t = rotZ_(t,N-ii);
    write2gif(gifFile1); 
    t = rotY(t,ids);
    write2gif(gifFile1); 
    t = rotZ(t,N-ii);
    write2gif(gifFile1); 
    t = rotY_(t,ids);
    write2gif(gifFile1); 
end
%% Observing the final results from different perspectives
view(-37.5,30);
gifFile2 = fullfile(pwd,'imgs','output','2.gif');
write2gif(gifFile2,1);
for ii = 10:10:180
    view(-37.5+ii,30);
    write2gif(gifFile2);
end
for jj = 10:10:180
    view(-37.5+180,30+jj);
    write2gif(gifFile2);
end