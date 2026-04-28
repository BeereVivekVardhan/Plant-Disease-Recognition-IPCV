function img = preprocessLeafImage(input)
if ischar(input) || isstring(input)
    img = imread(input);
else
    img = input;
end
if size(img,3) == 1
    img = cat(3,img,img,img);
end
img = imresize(img,[256 256]);
img = imgaussfilt(img,1);
img = im2double(img);
meanVal = mean(img(:));
if meanVal < 0.3
    img = imadjust(img,[0.2 0.8],[0 1]);
elseif meanVal > 0.8
    img = imadjust(img,[0 0.6],[0 1]);
else
    img = imadjust(img,stretchlim(img),[]);
end
img = imsharpen(img,'Radius',1,'Amount',1);
img = max(min(img,1),0);
img = im2uint8(img);
end