clear; clc;
Monte_Carlo = 10000000;

u = randn(Monte_Carlo,1);
v = randn(Monte_Carlo,1);

x_rt = sqrt(u.*u + v.*v);
T_0 = x_rt;

noOfBins1=150;
limit_low1=min(T_0);
limit_high1=max(T_0);
binWidth_w1=(limit_high1-limit_low1)/noOfBins1;
edges_w1=limit_low1:binWidth_w1:limit_high1;
noOfPoints_w1=histc(T_0,edges_w1);
figure
set(0,'DefaultLineLineWidth',4)
hold on; grid on;box on;
plot(edges_w1,noOfPoints_w1/Monte_Carlo/binWidth_w1,'-.rs','markers',12);
figure;
histogram(T_0);

mean_x_rt = mean(x_rt);
var_x_rt = var(x_rt);

T_1 = raylrnd(1,Monte_Carlo,1);
noOfBins2=150;
limit_low2=min(T_1);
limit_high2=max(T_1);
binWidth_w2=(limit_high2-limit_low2)/noOfBins2;
edges_w2=limit_low2:binWidth_w2:limit_high2;
noOfPoints_w2=histc(T_1,edges_w2);
figure
set(0,'DefaultLineLineWidth',4)
hold on; grid on;box on;
plot(edges_w2,noOfPoints_w2/Monte_Carlo/binWidth_w2,'-.rs','markers',12);
figure;
histogram(T_0);