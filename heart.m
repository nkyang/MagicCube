addpath source

N = 7;
figure()
ax = gca;
ax.Box = 'off';
axis(ax,'equal','off');
ax.Projection = 'perspective';
t = magicCube(N);

%% �ڶ���
t = rotZ_(t,6);
t = rotY(t,[3,5]);
t = rotZ(t,6);
t = rotY_(t,[3,5]);
%% �����Ĳ�
t = rotZ_(t,[4,5]);
t = rotY(t,2:6);
t = rotZ(t,4:5);
t = rotY_(t,2:6);
%% �����
t = rotZ_(t,3);
t = rotY(t,3:5);
t = rotZ(t,3);
t = rotY_(t,3:5);
%% ������
t = rotZ_(t,2);
t = rotY(t,4);
t = rotZ(t,2);
t = rotY_(t,4);
