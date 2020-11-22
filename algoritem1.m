img=imread('nova1.tif');
%show image
figure,imshow(img);
%transform into grayscale
[r,g,b]=imsplit(img)
figure,imshow(I),title('Grayscale image'); 
%remove noise with median filter
K = medfilt2(b);
figure,imshow(K), title('median filtering');
%add CLAHE algorithm
J = adapthisteq(I,'clipLimit',0.9,'Distribution','exponential');
figure,imshow(J), title('CLAHE');
%removing noise with median filtering
K1 = medfilt2(J);
figure,imshow(K1), title('median filtering2');
%image bluring for accuracy
Iblur1 = imgaussfilt(K1,2);
figure,imshow(Iblur1), title('gaussian blurring');
