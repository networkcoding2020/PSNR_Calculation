clc;
n=50;
p1=zeros(1,n);
for a1=1:n
    str1=['F:\temp\',num2str(a1),'.bmp'];
    I1=str1;
    str2=['F:\temp1\',num2str(a1),'.bmp'];
    J1=str2;
    [p1(a1)]=SVDPSNR(I1,J1);
    if(p1(a1)==Inf)
        p1(a1)=100;
    end
end
p2=zeros(1,n);
for a2=1:n
    str1=['F:\temp\',num2str(a2),'.bmp'];
    I2=str1;
    str2=['F:\temp2\',num2str(a2),'.bmp'];
    J2=str2;
    [p2(a2)]=SVDPSNR(I2,J2);
    if(p2(a2)==Inf)
        p2(a2)=100;
    end
end
p3=zeros(1,n);
for a3=1:n
    str1=['F:\temp\',num2str(a3),'.bmp'];
    I3=str1;
    str2=['F:\temp3\',num2str(a3),'.bmp'];
    J3=str2;
    [p3(a3)]=SVDPSNR(I3,J3);
    if(p3(a3)==Inf)
        p3(a3)=100;
    end
end
x1=1:n;
y1=p1(x1);
plot(x1,y1,'--r','linewidth',2)
axis([1,n,0,100])
hold on
x2=1:n;
y2=p2(x2);
plot(x2,y2,'--k','linewidth',2)
axis([1,n,0,100])
x3=1:n;
y3=p3(x3);
plot(x3,y3,'--b','linewidth',2)
axis([1,n,0,100])

xlabel('Frame sequence')
ylabel('PSNR value')
legend({'Replication-based','RLNC-based','Proposed Scheme'},'FontSize',17);
set(gca,'FontName','Times New Roman','FontSize',19);
set(gcf,'Units','centimeters','Position',[5 2 18 12]);%设置图片大小为7cm×5cm

