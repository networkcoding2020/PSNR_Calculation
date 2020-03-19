function [p1,p2,p3]=SVDPSNR(A,B)
if exist(A)==2
    X=imread(A);
    X=double(X);
    [a,b]=size(X);
   if exist(B)==2
    Y=imread(B);
    Y=double(Y); 
    errorx=sum(sum(abs(Y-X).^2));    %MSEÎó²î
    psnr=10*log10(255*255/(errorx/a/b));
    p1=psnr(:,:,1);
    p2=psnr(:,:,1);
    p3=psnr(:,:,1);

else
    p1=0;
    p2=0;
    p3=0;

    end
end