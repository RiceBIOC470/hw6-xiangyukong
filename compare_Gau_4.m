function result = compare_Gau_4(n);
is_sig = [];
pval = [];
x = []
for ii = 2:n;
    [is_sig(ii),pval(ii)] = compare_Gau_3(ii);
    x(ii) = ii;
end
plot(x,pval,'r','MarkerSize',18);
end
   