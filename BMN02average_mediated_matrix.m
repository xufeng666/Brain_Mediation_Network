pa='H:\Preprocessing\HCP360\REST1\result\*.mat';
Listn =dir(pa);    %���Ե����룬�������������������Ǹ�·��
   %���е�cell(i,1)�����ƽ���õ�264x264�ľ���
  %��Ӧÿ���������н������  ֮�������ĳһ�ڵ���мӸ��е�ƽ��ֵ
AVE_Sum=zeros(360,360);  
 
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
    savefile='H:\Preprocessing\HCP360\REST1\result\BeiMedMAX\';
    save(strcat(savefile,'M_',num2str(n),'_Med'),'AVE'); 
end
