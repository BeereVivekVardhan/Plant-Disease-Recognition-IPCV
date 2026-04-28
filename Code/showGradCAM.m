function showGradCAM(net,img)
img = imresize(img,[128 128]);
if size(img,3)==1
    img = cat(3,img,img,img);
end
dlImg = dlarray(single(img)/255,'SSC');
scores = predict(net,dlImg);
[~,classIdx] = max(scores);
layerName = "conv5_block3_out";   % resnet50 last conv layer
gradMap = gradCAM(net,img,classIdx, ...
    'FeatureLayer',layerName);
figure
imshow(img)
hold on
imagesc(gradMap,'AlphaData',0.5)
colormap jet
colorbar
title("Grad-CAM Heatmap")

end