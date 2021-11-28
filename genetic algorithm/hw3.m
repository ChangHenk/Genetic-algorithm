clc;
clear;

% x_real = -3 ~ 3
% y_real = -3 ~ 3

crossover = 0.7;
mutation = 0.001;
generation = 100;
ratio = 6/255;
% 隨機產生6個個體
chromosome = randsrc(6,16,[0 1]);
% 
for i = 1:6
    x_bin = num2str(chromosome(i,1:8));
    y_bin = num2str(chromosome(i,9:16));

    x_dec = bin2dec(x_bin);
    y_dec = bin2dec(y_bin);

    x_real(i) = x_dec*ratio;
    y_real(i) = y_dec*ratio;

    fitness(i) = (1-x_real(i))^2*exp(-x_real(i)^2-(y_real(i)+1)^2)-(x_real(i)-x_real(i)^3-y_real(i)^3)*exp(-x_real(i)^2-y_real(i)^2)
end

