function showLandmarks(vertices,faces,idx)
figure;
subplot(1,3,1); hold on; plotLandmarks(vertices*roty(-30),faces,idx);
subplot(1,3,2); hold on; plotLandmarks(vertices,faces,idx)
subplot(1,3,3); hold on; plotLandmarks(vertices*roty(30),faces,idx);
function plotLandmarks(vertices,faces,idx)
%patch('Vertices',vertices,'Faces',faces,'FaceColor', [1 1 1], 'EdgeColor', 'none', 'FaceLighting', 'phong'); axis equal; axis off; light;
patch('Faces',faces,'Vertices',vertices,'FaceColor', [0.9 0.9 0.9], 'EdgeColor', 'none','FaceLighting', 'gouraud','AmbientStrength',0.2,'DiffuseStrength',0.8,'SpecularStrength',0,'BackFaceLighting','lit'); axis tight; axis equal; axis off; light('Position',[0 0 1],'Style','infinite');
plot3(vertices(idx,1),vertices(idx,2),vertices(idx,3),'.');
text(vertices(idx,1),vertices(idx,2),vertices(idx,3)*2,cellstr(num2str((1:length(idx))')));