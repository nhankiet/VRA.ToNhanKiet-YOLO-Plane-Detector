function BaiTap16()
    imgI = imread('cameraman.tif');
    imgI = rgb2gray(imgI);
    imwrite(imgI, 'cameraman.jpg');
    imgJ = imrotate(imgI, 30);
    imwrite(imgJ, 'cameraman30.jpg');
end
