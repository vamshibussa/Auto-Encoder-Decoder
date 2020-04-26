 
load unformatted-data;
[r,c] = size(unformatted_data);
data = unformatted_data(:,2:c);
[m,n] = size(data);
p = 0.80;
result=zeros(1,20);
train = data(1:round(p*m),:);
test = data(round(p*m)+1:end,:);
for i=1:20 
    %rng(i);
    %idx = randperm(m); %should we still do this here?
    %train = data(idx(1:round(p*m)),:);
    %test = data(idx(round(p*m)+1:end),:);
    net0=initnet3(9,8,1,2,2);
    cancer.smat = train(:,2:10);
    %cancer.smat=rescale(cancer.smat);
    target = train(:,1);
    target(target==2)=0;
    target(target==4)=1;
    cancer.tmat=target;
    act0=forw3(net0,cancer);
    net20k=bp3(net0,cancer,40000,0.05,0);
    cancer.smat = test(:,2:10);
    %cancer.smat=rescale(cancer.smat);
    target_test = test(:,1);
    target_test(target_test==2)=0;
    target_test(target_test==4)=1;
    cancer.tmat=target_test;
    [r,c] = size(cancer.tmat);
    act20k=forw3(net20k,cancer);
    result(1,i)=(sum((act20k.out-cancer.tmat).^2));
    result;
end
boxplot(result);