function BaiTap14()
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    
    imgI1D = imgTrainAll(:,1);
    imgI2D = reshape(imgI1D, 28, 28);
    featuresVector = extractHOGFeatures(imgI2D);
    nSize = length(featuresVector);
    nTrainData = size(imgTrainAll, 2);
    
    featuresDataTrain = zeros(nSize, nTrainData);
    for i=1:nTrainData
        imgI1D = imgTrainAll(:, i);
        imgI2D = reshape(imgI1D, 28, 28);
        featuresDataTrain(:, i ) = extractHOGFeatures(imgI2D);
    end
    
    Mdl = fitcknn(featuresDataTrain', lblTrainAll);
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    imgI1D = (:,1);
    imgI2D = reshape(imgI1D, 28, 28);
    featuresVector = extractHOGFeatures(imgI2D);
    nSize = length(featuresVector);
    nTestData = size(imgTestAll, 2);
    
    featuresDataTest = zeros(nSize, nTestData);
    for i=1:nTestData
       imgI1D = imgTestAll(:, i);
       imgI2D = reshape(imgI1D, 28, 28);
       featuresDataTest(:, i) = extractHOGFeatures(imgI2D);
    end
    
    lblResult = predict(Mdl, featuresDataTest');
    nResult = (lblResult == lblTestAll);
    nCount = sum(nResult);
    fprintf('\nSo luong mau dung: %d', nCount);
    
end