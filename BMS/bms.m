clc
clear all
close all

data1 = load ('data_1.txt');
coluna1 = data1(:,2);

data2 = load ('data_2.txt');
coluna2 = data2(:,2);

data3 = load ('data_3.txt');
coluna3 = data3(:,2);


[n,p] = size(coluna1);
[n2,p2] = size(coluna2);
[n3,p3] = size(coluna3);

t1 = 1:n;
t2 = 1:n2;
t3 = 1:n3;


plot(t1,coluna1,'r-o', t2,coluna2,'b-o', t3,coluna3,'k-o'),
xlabel('Tempo [h]'), ylabel('Corrente [A]')
grid on
title('Carregamento BMS')
legend('Data 1', 'Data 2', 'Data 3', 'Location','northeast')
xticks([0:6:36])
xticklabels({'0','1','2','3','4','5','6'})
axis ([0 36 0 1.45])
