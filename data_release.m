% [~,all]=xlsread('E:\matlab����\�ٶ�\������\����ƽ��\����_4','Sheet1','A2:A331');
%save data_all all;��ʼ�����ұ�
load('name.mat');
load('tel.mat');
load('data_all.mat');
[~,u]=xlsread('./ѧ�������ϱ���Ϣ��.xls','Sheet0','C3:C500');
max=length(u(:));
later=cell(50,1);
telph=cell(50,1);
title=[date,'δ��ƽ��'];
later(1)=cellstr(title);
telph(1)=cellstr('�ֻ�');
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
            for m=1:1:620
                n=char(name(m));
                if length(a)==length(n)
                if a(:)==n(:)
                telph(d)=tel(m);
                disp(tel(m));
                end
                end
            end
            d=d+1;
        end
    end
end
out=[later,telph];
xlswrite(strcat('./',date,'δ��ƽ��.xlsx'),out);