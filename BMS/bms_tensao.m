clear all
close all
clc

data1 = load ('data_tensao1.txt');
coluna1 = data1(:,2);

data2 = load ('data_tensao2.txt');
coluna2 = data2(:,2);

%data3 = load ('data_3.txt');
%coluna3 = data3(:,2);


[n,p] = size(coluna1);
[n2,p2] = size(coluna2);
%[n3,p3] = size(coluna3);

t1 = 1:n;
t2 = 1:n2;
%t3 = 1:n3;

plot(t1,coluna1,'r-o', t2,coluna2,'b-o'),
xlabel('Tempo [h]'), ylabel('Tensão [V]')
grid on
title('Tensão aplicada em cada par de células em paralelo')
legend('Pack 1', 'Pack 2', 'Location','southeast')
xticks([0:6:36])
xticklabels({'0','1','2','3','4','5','6'})
axis ([0 36 3.65 4.21])
legend