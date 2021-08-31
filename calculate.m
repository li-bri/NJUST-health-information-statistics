% [~,all]=xlsread('E:\matlab资料\百度\助理工作\向理报平安\处理_4','Sheet1','A2:A331');
%save data_all all;初始化查找表
load('data_all.mat');
[~,u]=xlsread('E:\matlab资料\百度\助理工作\向理报平安\学生健康上报信息表.xls','Sheet0','C3:C500');
max=length(u(:));
later=cell(50,1);
title=[date,'未报平安'];
later(1)=cellstr(title);
d=2;
for i=1:1:330
    up=0;
    for j=1:1:max
        a=char(all(i));
        b=char(u(j));
        if length(a)==length(b)
        if a(:)==b(:)
            up=1;
        end
        end
        if j==max && up==0
            disp(a);
            later(d)=all(i);
            d=d+1;
        end
    end
end
xlswrite(strcat('E:\matlab资料\百度\助理工作\向理报平安\',date,'未报平安.xlsx'),later,'A1:A50');