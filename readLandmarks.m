function landmarks = readLandmarks(filename)
fileID = fopen( filename );
C = textscan(fileID,'%f','CommentStyle','%');
fclose(fileID);
landmarks = cell2mat(C);
end