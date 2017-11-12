function [imgData, lblData] = loadData(strFileNameData, strFileNameLabel)
    imgData = loadMNISTImages(strFileNameData);
    lblData = loadMNISTLabels(strFileNameLabel);
end