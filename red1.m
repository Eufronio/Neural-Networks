NNTWARN OFF
P = -1:0.1:1;
T = [1.005 1.010 0.900 0.700 0.750 0.800 0.850 0.900 0.950 0.950 0.800 0.750 0.700 0.650 0.600 0.550 0.500 0.450 0.300 0.100 -0.100];
[W1,b1,W2,b2]=initff(P,5,'tansig',T,'purelin');
A2=simuff(P,W1,b1,'tansig',W2,b2,'purelin');
disp_freq=15;
max_epoch=2000;
err_goal=0.001;
lr=0.001;
tp=[disp_freq max_epoch err_goal lr];
[W1,b1,W2,b2,epochs,tr]=trainbp(W1,b1,'tansig',W2,b2,'purelin',P,T,tp);