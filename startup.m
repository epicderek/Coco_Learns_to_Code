disp('Loading .m files in current and subfolders.')
% Add that folder plus all subfolders to the path.
rootFolder = fileparts(which(mfilename)); 
% Add that folder plus all subfolders to the path.
addpath(genpath(rootFolder));

disp('Loading complete! Welcome, Coco.')

fprintf('Sum of the first seven odd numbers: %d\n', sum(2*(0:6)+1));

