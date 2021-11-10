%% PROBLEM 4.61 : 
 %% ============== 

 % Actual X(jw) : 
 w=[-20:.01:20]; 
 X=(.1+j*w)./((.1+j*w).^2+100) + (.1+j*w)./((.1+j*w).^2+144); 


 %% Part (a) : 
 %% ========== 
 T=0.01;  N=4000;  M=100;  n=[0:M-1];  wa=(2*pi/(N*T))*[-N/2:N/2-1]; 
 x=exp(-n*T/10).*( cos(10*n*T) + cos(12*n*T) ); 
 Xa=fftshift(fft(x,N))*T; 

 figure(1),clf 
 subplot(2,1,1) 
 plot(w,abs(X)),hold on,stem(wa,abs(Xa),'.'),title('P4.61(a)') 
 xlabel('\omega:rad/s'),ylabel('N=4000,M=100'),axis([0 20 0 6]) 


 %% Part (b) : 
 %% ========== 
 T=0.01;  N=4000;  M=500;  n=[0:M-1];  wb=(2*pi/(N*T))*[-N/2:N/2-1]; 
 x=exp(-n*T/10).*( cos(10*n*T) + cos(12*n*T) ); 
 Xb=fftshift(fft(x,N))*T; 

 subplot(2,1,2) 
 plot(w,abs(X)),hold on,stem(wb,abs(Xb),'.'),title('P4.61(b)') 
 xlabel('\omega:rad/s'),ylabel('N=4000,M=500'),axis([0 20 0 6]) 

 print P4_61_1.eps 


 %% Part (c) : 
 %% ========== 
 T=0.01;  N=4000;  M=2500;  n=[0:M-1];  wc=(2*pi/(N*T))*[-N/2:N/2-1]; 
 x=exp(-n*T/10).*( cos(10*n*T) + cos(12*n*T) ); 
 Xc=fftshift(fft(x,N))*T; 

 figure(2),clf 
 subplot(2,1,1) 
 plot(w,abs(X)),hold on,stem(wc,abs(Xc),'.'),title('P4.61(c)') 
 xlabel('\omega:rad/s'),ylabel('N=4000,M=2500'),axis([0 20 0 6]) 


 %% Part (d) : 
 %% ========== 
 T=0.01;  N=16000;  M=2500;  n=[0:M-1];  wd=(2*pi/(N*T))*[-N/2:N/2-1]; 
 x=exp(-n*T/10).*( cos(10*n*T) + cos(12*n*T) ); 
 Xd=fftshift(fft(x,N))*T; 

 subplot(2,1,2) 
 plot(w,abs(X)),hold on,stem(wd,abs(Xd),'.'),title('P4.61(d)') 
 xlabel('\omega:rad/s'),ylabel('N=16000,M=2500'),axis([9 13 0 6]) 

 print P4_61_2.eps 