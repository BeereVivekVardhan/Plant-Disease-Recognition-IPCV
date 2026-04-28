function [leafMask,highlight,bbox,roi,hsvImg] = segmentLeafAndHighlightDisease(img)
img = imresize(img,[256 256]);

if size(img,3)==1
    img = cat(3,img,img,img);
end

hsvImg = rgb2hsv(img);
H = hsvImg(:,:,1);
S = hsvImg(:,:,2);
V = hsvImg(:,:,3);
leafMask = (H > 0.18 & H < 0.45) & (S > 0.2) & (V > 0.2);
leafMask = bwareaopen(leafMask,300);
leafMask = imclose(leafMask,strel('disk',5));
leafMask = imfill(leafMask,'holes');
mask1 = (H < 0.05) | (H > 0.9);
mask2 = (H > 0.05 & H < 0.15);
diseaseMask = (mask1 | mask2) & leafMask;
diseaseMask = bwareaopen(diseaseMask,40);
diseaseMask = imclose(diseaseMask,strel('disk',3));
highlight = img;
R = highlight(:,:,1);
R(diseaseMask) = 255;
highlight(:,:,1) = R;
stats = regionprops(leafMask,'BoundingBox','Area');
if isempty(stats)
    bbox = [1 1 256 256];
else
    areas = [stats.Area];
    [~,idx] = max(areas);
    bbox = stats(idx).BoundingBox;
end
roi = imcrop(img,bbox);
if isempty(roi)
    roi = img;
end
roi = imresize(roi,[256 256]);
leafMask = logical(leafMask);
end