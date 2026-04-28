clc
clear
close all
disp("=== Plant Disease Detection (CNN + Attention) ===")
lang = input("Language (en / hi / kn / te): ","s");
load Models/CNN_Attention_Model.mat
[file,path] = uigetfile('*.*');
if isequal(file,0)
    return
end
img = imread(fullfile(path,file));
img = preprocessLeafImage(img);
[leafMask,highlight,bbox,roi,hsvImg] = ...
    segmentLeafAndHighlightDisease(img);
figure
subplot(2,3,1)
imshow(img)
title("Original")

subplot(2,3,2)
imshow(highlight)
title("Disease Highlight")

subplot(2,3,4)
imshow(hsvImg(:,:,1),[])
title("H")

subplot(2,3,5)
imshow(hsvImg(:,:,2),[])
title("S")

subplot(2,3,6)
imshow(hsvImg(:,:,3),[])
title("V")


roi = imresize(roi,[128 128]);

if size(roi,3)==1
    roi = cat(3,roi,roi,roi);
end
[label,score] = classify(netCNN,roi);

confidence = max(score) * 100;
gray = rgb2gray(roi);
mask = gray < 130;
mask = bwareaopen(mask,50);
severity = nnz(mask) / numel(mask) * 100;
if severity < 3
    label = "Healthy";
end
if confidence < 55
    label = "Unknown";
elseif confidence < 65 && label ~= "Healthy"
    label = "Unknown";
end
if confidence > 90
    label = string(label);
end
trainedClasses = netCNN.Layers(end).Classes;
if ~ismember(label,trainedClasses) && ...
        label ~= "Healthy" && label ~= "Unknown"
    label = "Unknown";
end
info = diseaseInfo(label,lang);
disp("===================================")
disp("Disease: " + string(label))
disp("Confidence: " + num2str(confidence))
disp("Severity %: " + num2str(severity))
disp("Description: " + string(info.Description))
disp("Remedy: " + string(info.Remedy))
disp("Note: " + string(info.Note))
disp("===================================")
try
    fullText = info.Description + ". " + info.Remedy + ". " + info.Note;
    googleSpeak(char(fullText), lang);
catch
    disp("Voice error")
end