function imgOut = readAndSegment(filename)
img = imread(filename);
if ndims(img)==2
    img = cat(3,img,img,img);
end
if size(img,3)~=3
    img = img(:,:,1:3);
end
img = imresize(img,[128 128]);
imgOut = img;
end