function result = compare_Gau_2(N);
set_0 = randn(10000,1);
set_1 = randn(10000,1)+1;
set_2 = randn(10000,1)+2;
set_3 = randn(10000,1)+3;
set_4 = randn(10000,1)+4;
set_5 = randn(10000,1)+5;
set_6 = randn(10000,1)+6;
set_7 = randn(10000,1)+7;
set_8 = randn(10000,1)+8;
set_9 = randn(10000,1)+9;
set = [];
set_a = [];
set_b = [];
set_c = [];
set_d = [];
set_e = [];
set_f = [];
set_g = [];
set_h = [];
set_i = [];
if N > 10000 | N < 2;
    disp('please input a number from 2 to 10000');
else
    for ii = 1:N;
        set(ii) = set_0(randi(10000,1,1));
        set_a(ii) = set_1(randi(10000,1,1));
        set_b(ii) = set_2(randi(10000,1,1));
        set_c(ii) = set_3(randi(10000,1,1));
        set_d(ii) = set_4(randi(10000,1,1));
        set_e(ii) = set_5(randi(10000,1,1));
        set_f(ii) = set_6(randi(10000,1,1));
        set_g(ii) = set_7(randi(10000,1,1));
        set_h(ii) = set_8(randi(10000,1,1));
        set_i(ii) = set_9(randi(10000,1,1));
    end
end
figure;hold on;
subplot(2,5,1);histogram(set,-30:30);
subplot(2,5,2);histogram(set_a,-30:30);
subplot(2,5,3);histogram(set_b,-30:30);
subplot(2,5,4);histogram(set_c,-30:30);
subplot(2,5,5);histogram(set_d,-30:30);
subplot(2,5,6);histogram(set_e,-30:30);
subplot(2,5,7);histogram(set_f,-30:30);
subplot(2,5,8);histogram(set_g,-30:30);
subplot(2,5,9);histogram(set_h,-30:30);
subplot(2,5,10);histogram(set_i,-30:30);
end