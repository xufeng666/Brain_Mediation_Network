pa='H:\Preprocessing\HCP360\REST1\result\*.mat';
Listn=dir(pa);
h=1;
AVE_med=zeros(500,360);   %��Ӧÿ���ڵ��н������  ÿ��cell(i,1)����ƽ��   ��ʾ�н������ڵ������
for k=1:500
    FileName = ['B_sub_' num2str(k) '.mat'];
    S=importdata(FileName);%360,1 ��cell�ļ�
    for i=1:360    
        A=S{i,1};
        AVE_med(h,i)=sum(A(:))/129600;
    end  
    h=h+1;
end
savefile='H:\Preprocessing\HCP360\REST1\result\med\';
save(strcat(savefile,'med_sub2.mat'),'AVE_med'); 


