%% PROBLEM 4.63 : 
 %% ============== 

 T=.1; 

 %% Part (c) : 
 %% ========== 
 M=100; 
 n=[0:M-1];  wft=[-5:.001:5]*pi;  wdtfs=(2*pi/(M*T))*[-M/2:M/2-1]; 
 wft1=wft+2*pi;  wft2=wft-2*pi;  wft3=wft+1.6*pi;  wft4=wft-1.6*pi; 
 wft5=wft+2.2*pi;  wft6=wft-2.2*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(sin(wft4*T/2)); 
 t5=exp(-j*wft5*T*(M-1)/2).*sin(M*wft5*T/2)./(4*sin(wft5*T/2)); 
 t6=exp(-j*wft6*T*(M-1)/2).*sin(M*wft6*T/2)./(4*sin(wft6*T/2)); 
 Yft=(t1+t2+t3+t4+t5+t6)/M; 

 x=cos(2*pi*n*T) + 2*cos(2*pi*0.8*n*T) + .5*cos(2*pi*1.1*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 figure(1),clf 
 subplot(3,1,1) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=100'),axis([0 3 0 1.5]) 
 title('P4.63') 

 %% Part (d),1 : 
 %% ========== 
 M=105; 
 n=[0:M-1];  wft=[-5:.001:5]*pi;  wdtfs=(2*pi/((M-1)*T))*[-(M-1)/2:(M-1)/2]; 
 wft1=wft+2*pi;  wft2=wft-2*pi;  wft3=wft+1.6*pi;  wft4=wft-1.6*pi; 
 wft5=wft+2.2*pi;  wft6=wft-2.2*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(sin(wft4*T/2)); 
 t5=exp(-j*wft5*T*(M-1)/2).*sin(M*wft5*T/2)./(4*sin(wft5*T/2)); 
 t6=exp(-j*wft6*T*(M-1)/2).*sin(M*wft6*T/2)./(4*sin(wft6*T/2)); 
 Yft=(t1+t2+t3+t4+t5+t6)/M; 

 x=cos(2*pi*n*T) + 2*cos(2*pi*0.8*n*T) + .5*cos(2*pi*1.1*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 subplot(3,1,2) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=105'),axis([0 3 0 1.5]) 


 %% Part (d),2 : 
 %% ========== 
 M=108; 
 n=[0:M-1];  wft=[-5:.001:5]*pi;  wdtfs=(2*pi/(M*T))*[-M/2:M/2-1]; 
 wft1=wft+2*pi;  wft2=wft-2*pi;  wft3=wft+1.6*pi;  wft4=wft-1.6*pi; 
 wft5=wft+2.2*pi;  wft6=wft-2.2*pi; 
 t1=exp(-j*wft1*T*(M-1)/2).*sin(M*wft1*T/2)./(2*sin(wft1*T/2)); 
 t2=exp(-j*wft2*T*(M-1)/2).*sin(M*wft2*T/2)./(2*sin(wft2*T/2)); 
 t3=exp(-j*wft3*T*(M-1)/2).*sin(M*wft3*T/2)./(sin(wft3*T/2)); 
 t4=exp(-j*wft4*T*(M-1)/2).*sin(M*wft4*T/2)./(sin(wft4*T/2)); 
 t5=exp(-j*wft5*T*(M-1)/2).*sin(M*wft5*T/2)./(4*sin(wft5*T/2)); 
 t6=exp(-j*wft6*T*(M-1)/2).*sin(M*wft6*T/2)./(4*sin(wft6*T/2)); 
 Yft=(t1+t2+t3+t4+t5+t6)/M; 

 x=cos(2*pi*n*T) + 2*cos(2*pi*0.8*n*T) + .5*cos(2*pi*1.1*n*T); 
 Ydtfs=fftshift(fft(x,M))/M; 

 subplot(3,1,3) 
 plot(wft/(2*pi),abs(Yft)),hold on,stem(wdtfs/(2*pi),abs(Ydtfs)) 
 xlabel('Frequency(Hz)'),ylabel('|Y[k]:M=108'),axis([0 3 0 1.5]) 

 print P4_63_1.eps