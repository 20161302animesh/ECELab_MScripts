clear; clc;

m = 10000000;

y01 = randn(m,1);
y02 = randn(m,1);
y03 = randn(m,1);

z1 = y01+y02+y03;

figure;
histogram(z1);

avg_z1 = sum(z1)/m;
var_z1 = sum(z1.*z1)/m - (avg_z1*avg_z1);

y04 = rand(m,1);
y05 = rand(m,1);
y06 = rand(m,1);
y07 = rand(m,1);
y08 = rand(m,1);
y09 = rand(m,1);
y10 = rand(m,1);
y11 = rand(m,1);
y12 = rand(m,1);
y13 = rand(m,1);
y14 = rand(m,1);
y15 = rand(m,1);

z2 = y04+y05+y06+y07+y08+y09+y10+y11+y12+y13+y14+y15;
figure;
histogram(z2);

avg_z2 = sum(z2)/m;
var_z2 = sum(z2.*z2)/m - (avg_z2*avg_z2);