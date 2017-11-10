function [is_sig,pval] = compare_Gau_1(N);
set_1 = randn(10000,1);
set_2 = randn(10000,1)+1;
set_a = [];
set_b = [];
if N > 10000 | N < 2;
    disp('please input a number from 2 to 10000');
else
    for ii = 1:N;
        set_a(ii) = set_1(randi(10000,1,1));
        set_b(ii) = set_2(randi(10000,1,1));
    end
end
[is_sig, pval] = ttest2(set_a,set_b);
figure;hold on;
subplot(1,2,1);histogram(set_a,-30:30);
subplot(1,2,2);histogram(set_b,-30:30);
end