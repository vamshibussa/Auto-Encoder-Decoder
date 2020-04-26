% load data
load unformatted-data;
% get size of matrix
[r,c] = size(unformatted_data)  ;
% remove id column
data = unformatted_data(:,3:c); % (ROWS, COLUMNS)
class = unformatted_data(:,2);
data = rescale(data)
net_d.smat  = data(:,1:9);
net_d.tmat =  data(:,1:9);
net_new = initnet3(9,2,9,2,2);

 act_new = forw3(net_new,net_d);
 
 net20k = bp3(net_new,net_d,40000,0.05,0);
 
 act20k = forw3(net20k,net_d)
 
 scatter(act20k.hid(:,1), act20k.hid(:,2),50,class,'filled')
 