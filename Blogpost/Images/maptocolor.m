clear all
close all
clc

%% Map to rgb
% im = imread("000120_10_48x144_BS16_Ep400_Cross.png");
% n = size(unique(reshape(im,size(im,1)*size(im,2),size(im,3))),1);
% rgb = ind2rgb(gray2ind(im,n),jet(n));
% 
% figure(1)
% imshow(im)
% 
% figure(2)
% imshow(rgb)

%% Uncomment below to convert and write all gray images to colorized ones
d = uigetdir(pwd, 'Select a folder');
files = dir(fullfile(d, '*.png'));

for ii = 1:numel(files)
    name = files(ii).name;
    im = imread(name);
    if size(im,3) ~= 1
        continue
    else
        n = size(unique(reshape(im,size(im,1)*size(im,2),size(im,3))),1);
        rgb = ind2rgb(gray2ind(im,n),jet(n));
        savename = strcat("colorized_", name);
        imwrite(rgb,strcat(d,"\colorized\",savename));
    end
end
