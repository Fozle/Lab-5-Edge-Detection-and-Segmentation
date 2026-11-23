
%% Lab 5: Edge Detection and Segmentation
% Sobel, Prewitt, Canny, LoG and Otsu Thresholding

close all;
clear;
clc;

%% Load and prepare image

if exist('peppers.png','file')
    I0 = imread('peppers.png');
else
    I0 = imread('cameraman.tif');
end

if size(I0,3) == 3
    I = im2double(rgb2gray(I0));
else
    I = im2double(I0);
end

%% 1. Sobel and Prewitt edge detection

edges_sobel = edge(I,'Sobel');
edges_prewitt = edge(I,'Prewitt');

figure(1);
montage({edges_sobel, edges_prewitt},'Size',[1 2]);
title('Sobel | Prewitt Edge Detection');

saveas(gcf,'Lab05_figure_01.png');

%% 2. Canny edge detection

edges_canny = edge(I,'Canny',[0.05 0.2]);

figure(2);
imshow(edges_canny);
title('Canny Edge Detection');
axis image;

saveas(gcf,'Lab05_figure_02.png');

%% 3. Laplacian of Gaussian (LoG)

edges_log = edge(I,'log');

figure(3);
imshow(edges_log);
title('Laplacian of Gaussian Edge Detection');
axis image;

saveas(gcf,'Lab05_figure_03.png');

%% 4. Otsu thresholding and segmentation

level = graythresh(I);
BW = imbinarize(I,level);

figure(4);
montage({I,BW},'Size',[1 2]);
title('Original Image | Otsu Binary Segmentation');

fprintf('Otsu threshold level: %.4f\n',level);

saveas(gcf,'Lab05_figure_04.png');

%% 5. Label and visualize regions

[L,num] = bwlabel(BW);
RGB = label2rgb(L);

figure(5);
imshow(RGB);
title(['Labeled Regions: ',num2str(num)]);
axis image;

fprintf('Number of connected regions: %d\n',num);

saveas(gcf,'Lab05_figure_05.png');

%% 6. Final information

fprintf('\nAll five figures saved successfully.\n');
fprintf('Lab 5 completed.\n');
