clc;close all;clear;

rou=0.1481;  %alfa_gama.m中的test(6,6)
lamda=0.1;  %传染成功率
global plou m n l;

plou=rou*lamda;

figure(1);
l=3;

i=1;j=1;z(i,j)=0;
for m=1:1:8
    for n=1:1:6
        z(i,j)=quad('lifet',0,10000);
        j=j+1;
    end
    i=i+1;
    j=1;
end
  
m=1:1:8;
n=1:1:6;
mesh(m,n,z');
set(gca,'xtick',0:1:8);
set(gca,'ytick',0:1:6);
xlabel('$m$','Interpreter',' LaTex');
ylabel('$n$','Interpreter',' LaTex');
zlabel('生存期 (小时)');

figure(2);
clear z;
m=4;

i=1;j=1;z(i,j)=0;
for n=1:1:6
    for l=1:1:3
        z(i,j)=quad('lifet',0,10000);
        j=j+1;
    end
    i=i+1;
    j=1;
end
  
n=1:1:6;
l=1:1:3;

mesh(n,l,z');
set(gca,'xtick',0:1:6);
set(gca,'ytick',[1 2 3]);
xlabel('$n$','Interpreter',' LaTex');
ylabel('$l$','Interpreter',' LaTex');
zlabel('生存期 (小时)');

figure(3);
clear z;
n=3;

i=1;j=1;z(i,j)=0;
for m=1:1:8
    for l=1:1:3
        z(i,j)=quad('lifet',0,10000);
        j=j+1;
    end
    i=i+1;
    j=1;
end
  
m=1:1:8;
l=1:1:3;
mesh(m,l,z');
set(gca,'xtick',0:1:8);
set(gca,'ytick',[1 2 3]);
xlabel('$m$','Interpreter',' LaTex');
ylabel('$l$','Interpreter',' LaTex');
zlabel('生存期 (小时)');