function wordcount
%˼·�����Ĵ�Ƶͳ���漰���ԡ�������жϣ���Ҫ����ʵ���д�жϹ��򣬺ܸ��ӡ�
%��򵥵İ취��ֱ��ͳ��Ӣ�Ĵ�Ƶ�����ɿո�ֱ�ӻ��ִ��Ȼ���ٷ��뼴�ɵõ����Ĵ�Ƶ��

%�ӹٷ���վ�����ص�pdf��ת��reportfulltext.txt���浽workspace���в��� ȫ�Ĺ�25003���ַ���

clc;
clear;
report=fileread('only title combined.txt'); %����ȫ��
report=regexprep(report,'\W',' '); %�����ַ��ģ���ת��Ϊ�ո���Ҫ��ȥ��������
report=lower(report); %���Сд
words=regexp(report,' ','split')'; %���ݿո�ָ�Ϊ����cell

%����ÿ�����ʶ��ó�����

rank = tabulate(words); %rank�������������������ƣ����ִ����Ͱٷֱ�
ans=sortrows(rank,-2); %ֻ���ݵڶ��н������� -2��ʾ����

xlswrite('results',ans);%���Ϊexcel�ļ�
end