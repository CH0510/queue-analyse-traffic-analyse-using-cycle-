clear;clc;
H = 2;    %ƽ������ʱ��
C=5;   %�ŵ���
N=2000;  %�û���

lamda_data = load('C:\Users\hp\Desktop\�������C++ѭ����\mu_2\lamda_data.txt');
ration_data = load('C:\Users\hp\Desktop\�������C++ѭ����\mu_2\block_rate.txt');
lamda_data = [0;lamda_data];
ration_data = [0;ration_data];
plot(lamda_data*H,ration_data,'r','linewidth',1);


lamda_temp=0.01:0.01:N*0.01;
A=lamda_temp*H;
for j=1:length(A)
    sum=0.0;
    for i=1:1:C
        temp=(A(j)^i)/factorial(i);
        sum= sum+temp;
    end
    Pr(j)=(A(j)^C)/(factorial(C)*sum); %�����ʹ�ʽ
end
hold on;
plot(A, Pr, 'b')
title(['���й���ӵ�����ʵķ�����,ƽ������ʱ�䣺',num2str(H)]);
xlabel('������( Elang)');
ylabel('ӵ������');
legend('��������','��������');
grid on;