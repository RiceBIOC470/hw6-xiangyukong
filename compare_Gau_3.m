function [is_sig,pval] = compare_Gau_3(N);
set_1 = 0.1*randn(10000,1);
set_2 = 10*randn(10000,1)+1;
set_a = [];
set_b = [];
if N > 10000 | N < 1;
    disp('please input a number from 2 to 10000');
else
    for ii = 1:N;
        set_a(ii) = set_1(randi(10000,1,1));
        set_b(ii) = set_2(randi(10000,1,1));
    end
end
[is_sig, pval] = ttest2(set_a,set_b);
end