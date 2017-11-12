function BaiTap25()
    %%Load Image Data Train
    rootFolder = fullfile('DataTrain');
    categories = {'0','1','2','3','4','5','6','7','8','9'};
    imds = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
    
    tbl01 = countEachLabel(imds)
    minSetCount = min(tbl01{:,2});
    imds = splitEachLabel(imds, minSetCount,'randomize');
    tbl02 = countEachLabel(imds)
    
    bag = bagOfFeatures(imds);
    img = readimage(imds, 1);
    featureVector = encode(bag, img);
    figure
    bar(featureVector)
    title('Visual word occurreces')
    xlabel('Visual word index')
    ylabel('Frequency of occurrence')
    
    categoryClassifier = trainImageCategoryClassifier(imds, bag);
    rootFolder = fullfile('DataTest');
    categories = {'0','1','2','3','4','5','6','7','8','9'};

    imds = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
    
    tbl101 = countEachLabel(imds);
    
    confMatrixTest = evaluate(categoryClassifier, imds);
    mean(diag(confMatrixTest));
    
    
end