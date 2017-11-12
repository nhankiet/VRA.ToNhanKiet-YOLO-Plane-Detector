function Regcognition004_Digits_BIS(n)
    fprintf('\n Load du lieu train\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
 
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    fprintf('\n Load du lieu test\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    nTrainImages = size(imgTrainAll, 2);
    nTrainLabels = size(lblTrainAll, 1);
    
    nTestImages = size(imgTestAll, 2);
    nTestLabels = size(lblTestAll, 1);
    
    nSizeofImage = size(imgTrainAll, 1);
    
    nNumber = n;
    figure;
    img = imgTestAll(:, nNumber);
    img2D = reshape(img, 28, 28);
    strLabelImage = num2str(lblTestAll(nNumber));
    strLabelImage = [strLabelImage, '(', num2str(nNumber),')'];
    imshow(img2D);
    title(strLabelImage);

end
