function testLandmarks

FV.vertices= double(reshape(BFM.shapeMU,3,length(BFM.shapeMU)/3)');
FV.faces = BFM.faces;

figure; 
subplot(1,3,1); plotLandmarks(FV.vertices*roty(-30),faces,idx);
subplot(1,3,2); plotLandmarks(FV.vertices,faces,idx)
subplot(1,3,3); plotLandmarks(FV.vertices*roty(30),faces,idx)
function plotLandmarks(vertices,faces,idx)
patch('Vertices',vertices,'Faces',faces,'FaceColor', [1 1 1], 'EdgeColor', 'none', 'FaceLighting', 'phong'); axis equal; axis off; light;
plot3(vertices(idx,1),vertices(idx,2),vertices(idx,3),'.');
text(vertices(idx,1),vertices(idx,2),vertices(idx,3)*2,cellstr(num2str((1:length(idx))')));
