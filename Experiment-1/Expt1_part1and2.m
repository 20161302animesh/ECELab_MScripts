clear; clc;

x1 = rand(1000,1);
figure;
histogram(x1,20);

x2 = randn(1000,1);
figure;
histogram(x2,20);

avg_x1 = sum(x1)/1000;
var_x1 = sum(x1.*x1)/1000 - (avg_x1*avg_x1);
avg_x2 = sum(x2)/1000;
var_x2 = sum(x2.*x2)/1000 - (avg_x2*avg_x2);

output_stat = [avg_x1 var_x1 avg_x2 var_x2]