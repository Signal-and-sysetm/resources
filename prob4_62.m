 %% PROBLEM 4.62 : 
 %% ============== 

 %% Part (1) : 
 %% ========== 
 T=0.1;  M=40; 
 n=[0:M-1];  wft=[-5:.001:5]*2*pi;  wdtfs=(2*pi/(M*T))*[-M/2:M/2-1]; 
 wft1=wft+0.8*pi;  wft2=wft-0.8*pi;  wft3=wft+0.9*pi;  wft4=wft-0.9*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(4*sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(4*sin(wft4*T/2)); 
 Yft=(t1+t2+t3+t4)/M; 

 x=cos(2*pi*0.4*n*T) + .5*cos(2*pi*0.45*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 figure(1),clf 
 subplot(2,1,1) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 title('P4.62-1'),xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=40'),axis([0 5 0 1]) 


 %% Part (2) : 
 %% ========== 
 T=0.1;  M=2000; 
 n=[0:M-1];  wft=[-5:.001:5]*2*pi;  wdtfs=(2*pi/(M*T))*[-M/2:M/2-1]; 
 wft1=wft+0.8*pi;  wft2=wft-0.8*pi;  wft3=wft+0.9*pi;  wft4=wft-0.9*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(4*sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(4*sin(wft4*T/2)); 
 Yft=(t1+t2+t3+t4)/M; 

 x=cos(2*pi*0.4*n*T) + .5*cos(2*pi*0.45*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 subplot(2,1,2),title('P4.62_2') 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=2000'),axis([0.34 0.5 0 .6]) 

 print P4_62_1.eps 


 %% Part (3) : 
 %% ========== 
 T=0.1;  M=2001; 
 n=[0:M-1];  wft=[-5:.001:5]*2*pi;  wdtfs=(2*pi/((M-1)*T))*[-(M-1)/2:(M-1)/2]; 
 wft1=wft+0.8*pi;  wft2=wft-0.8*pi;  wft3=wft+0.9*pi;  wft4=wft-0.9*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(4*sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(4*sin(wft4*T/2)); 
 Yft=(t1+t2+t3+t4)/M; 

 x=cos(2*pi*0.4*n*T) + .5*cos(2*pi*0.45*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 figure(2),clf 
 subplot(2,1,1) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 title('P4.62-2') 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=2001'),axis([0.34 0.5 0 .6]) 


 %% Part (4) : 
 %% ========== 
 T=0.1;  M=2005; 
 n=[0:M-1];  wft=[-5:.001:5]*2*pi;  wdtfs=(2*pi/((M-1)*T))*[-(M-1)/2:(M-1)/2]; 
 wft1=wft+0.8*pi;  wft2=wft-0.8*pi;  wft3=wft+0.9*pi;  wft4=wft-0.9*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(4*sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(4*sin(wft4*T/2)); 
 Yft=(t1+t2+t3+t4)/M; 

 x=cos(2*pi*0.4*n*T) + .5*cos(2*pi*0.45*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 subplot(2,1,2) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=2005'),axis([0.34 0.5 0 .6]) 

 print P4_62_2.eps 


 %% Part (5) : 
 %% ========== 
 T=0.1;  M=2010; 
 n=[0:M-1];  wft=[-5:.001:5]*2*pi;  wdtfs=(2*pi/(M*T))*[-M/2:M/2-1]; 
 wft1=wft+0.8*pi;  wft2=wft-0.8*pi;  wft3=wft+0.9*pi;  wft4=wft-0.9*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(4*sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(4*sin(wft4*T/2)); 
 Yft=(t1+t2+t3+t4)/M; 

 x=cos(2*pi*0.4*n*T) + .5*cos(2*pi*0.45*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 figure(3),clf 
 subplot(2,1,1),title('P4.62_3') 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=2010'),axis([0.34 0.5 0 .6]) 
 title('P4.62-3') 

 print P4_62_3.eps 