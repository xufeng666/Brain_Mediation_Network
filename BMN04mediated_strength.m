pa='H:\Preprocessing\HCP360\REST1\result\*.mat';
Listn =dir(pa);    %���Ե����룬�������������������Ǹ�·��
   %���е�cell(i,1)�����ƽ���õ�246x246�ľ���
  %��Ӧÿ���������н������  ֮�������ĳһ�ڵ���мӸ��е�ƽ��ֵ
AVE_beimed=zeros(500,360);
h=1;
for n=1:500
    FileName = ['B_sub_' num2str(n) '.mat'];
    B=importdata(FileName);
    Q=zeros(360,360); 
    for k=360
       B{k,1}(360,360)=0;
    end
    for k=1:360     
        Q=Q+B{k,1};
    end
    AVE=Q/360;
    for i=1:360
        a=sum(AVE(i,:),2);  %��ĳһ�а������
        b=sum(AVE(:,i),1);  %��ĳһ�а������
        AVE_beimed(h,i)=(a+b)/720;
    end
    h=h+1;
end
savefile='H:\Preprocessing\HCP360\REST1\result\beimed\all\';
save(strcat(savefile,'beimed_sub2.mat'),'AVE_beimed');