function BaiTap26() 
   imgTrainAll = loadMNISTImages ('./train-images.idx3-ubyte');
   lblTrainAll = loadMNISTLabels ('./train-labels.idx1-ubyte'); 
   
   Mdl = fitcecoc(imgTrainAll',lblTrainAll);
   
   imgTestAll = loadMNISTImages ('./t10k-images.idx3-ubyte');
   lblTestAll = loadMNISTLabels ('./t10k-labels.idx1-ubyte');
   
   lblResult = predict(Mdl,imgTestAll') ; 
   nResult = (lblResult == lblTestAll);
   nCount = sum(nResult);
   fprintf ('\n So luong may dung: %d\n',nCount); %% 94,38% mau dung
end 
 