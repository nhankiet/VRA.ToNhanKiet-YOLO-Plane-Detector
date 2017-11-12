function demsoHog()
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    imgI1D = imgTrainAll(:,1);
    imgI2D = reshape(imgI1D,28,28);
    
    subplot(2,5,1);
    imshow(imgI2D);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [2 2]);
    subplot(2,5,2);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [4 4]);
    subplot(2,5,3);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [8 8]);
    subplot(2,5,4);
    plot(visualHog);
    
    subplot(2,5,5);
    hist(featuresVector);
    
    imgI1D = imgTrainAll(:,1997);
    imgI2D = reshape(imgI1D,28,28);
    
    subplot(2,5,6);
    imshow(imgI2D);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [2 2]);
    subplot(2,5,7);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [4 4]);
    subplot(2,5,8);
    plot(visualHog);
    
    [featuresVector, visualHog] = extractHOGFeatures(imgI2D, 'CellSize', [8 8]);
    subplot(2,5,9);
    plot(visualHog);
    
    subplot(2,5,10);
    hist(featuresVector);
   
    
    
end