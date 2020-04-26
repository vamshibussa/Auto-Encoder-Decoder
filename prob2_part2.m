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
net_new = initnet5(9,6,2,6,9,2,2,2,2);

 act_new = forw5(net_new,net_d); % get back to this one
 act_new
 net20k = bp5(net_new,net_d,40000,0.05,0);
 net20k
 act20k = forw5(net20k,net_d)
 
 scatter(act20k.hid2(:,1), act20k.hid2(:,2),50,class,'filled')
 