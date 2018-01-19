clear; clc;
Monte_Carlo = 10000000;

u = rand(Monte_Carlo,1);
x = (-1/3)*log10(1-u)/log10(exp(1));
T_2 = x;

noOfBins=150;
limit_low=min(T_2);
limit_high=max(T_2);
binWidth_w=(limit_high-limit_low)/noOfBins;
edges_w=limit_low:binWidth_w:limit_high;
noOfPoints_w=histc(T_2,edges_w);
figure
set(0,'DefaultLineLineWidth',4)
hold on; grid on;box on;
plot(edges_w,noOfPoints_w/Monte_Carlo/binWidth_w,'-.rs','markers',12);
figure;
histogram(x);