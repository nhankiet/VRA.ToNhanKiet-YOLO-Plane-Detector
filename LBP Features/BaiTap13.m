function BaiTap13()

    %% Load Data Train
    strData = 'train-images.idx3-ubyte';
    strDataLabel = 'train-labels.idx1-ubyte';
    [imgDataTrain,lblDataTrain] = loadData(strData,strDataLabel);

    %% Extract Features
    featuresDataTrain = ExtractFeaturesLBP(imgDataTrain);

    %% Build model KNN
    Mdl = fitcknn(featuresDataTrain',lblDataTrain);

    %% Load Data Test
    strData = 't10k-images.idx3-ubyte';
    strDataLabel = 't10k-labels.idx1-ubyte';
    [imgDataTest, lblActualDataTest] = loadData(strData,strDataLabel);
    
    %% Extract Features
    featuresDataTest = ExtractFeaturesLBP(imgDataTest);
    
    %% Save Result
    lblResult = predict(Mdl,featuresDataTest');
    nResult = (lblResult == lblActualDataTest);
    nCount = sum(nResult);
    fprintf('\nSo luong mau dung: %d\n',nCount); %% 54,39% mau dung
end