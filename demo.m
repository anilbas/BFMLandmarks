BFMpath = '01_MorphableModel.mat';
BFM = load(BFMpath);

landmarkpath = 'Landmarks68_BFM.anl';
%landmarkpath = 'Landmarks21_BFM.anl';
idx = readLandmarks(landmarkpath);

vertices = double(reshape(BFM.shapeMU,3,length(BFM.shapeMU)/3)');
faces = BFM.tl;

showLandmarks(vertices,faces,idx);