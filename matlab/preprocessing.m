clc
clear all
close all

data_dir = 'E:\dev\data\mri\brainTumorDataPublic';
dest_1 = 'E:\dev\data\mri\sorted\glioma';
dest_2 = 'E:\dev\data\mri\sorted\meningioma';
dest_3 = 'E:\dev\data\mri\sorted\pituitary';

raw_files = dir(data_dir);

% Skip the directory and above
for k = 1:length(raw_files)
    
%     local_file = fullfile(data_dir, raw_files(k).name);
    local_file = raw_files(k);
    local_file_name = fullfile(local_file.folder, local_file.name);
    
%     if ~isfolder(local_file)
    if ~local_file.isdir
    
        S = load(local_file_name);
        switch S.cjdata.label
            case 1
                local_dest = dest_1;
            case 2
                local_dest = dest_2;
            case 3
                local_dest = dest_3;
        end
        dest_path = fullfile(local_dest, string(k) + '.png');
        converted_image = uint8(S.cjdata.image);
        imwrite(converted_image, dest_path,'png');
    end
end