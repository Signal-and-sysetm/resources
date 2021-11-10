%% PROBLEM 4.60 : 
 %% ============== 

 %% To compute the DTFS, we only need N-point FFT. For DTFT, we use 
 %% densely-sampled FFT, let's choose 1000 samples (zero padding). 
 %% N|X[k]| = fft(X,N), the scaling by N is inherent when using fft 
 %% to compute DTFS. 

 x=cos(3*pi*[0:31]/8); 
 Wdtft=[-pi:pi/500:pi-pi/500]; 
 X=fftshift(fft(x,1000)); 


 %% N=32 : 
 %% ====== 
 N=32; 
 Wdtfs=[-pi:2*pi/N:pi-2*pi/N]; 
 X1=fftshift(fft(x,N)); 

 figure(1),clf 
 subplot(3,1,1) 
 plot(Wdtft,abs(X)),hold on,stem(Wdtfs,abs(X1),'.') 
 xlabel('Omega'),ylabel('N=32'),axis tight 
 title('P4.60') 

 %% N=60 : 
 %% ====== 
 N=60; 
 Wdtfs=[-pi:2*pi/N:pi-2*pi/N]; 
 X2=fftshift(fft(x,N)); 

 subplot(3,1,2) 
 plot(Wdtft,abs(X)),hold on,stem(Wdtfs,abs(X2),'.') 
 xlabel('Omega'),ylabel('N=60'),axis tight 


 %% N=120 : 
 %% ======= 
 N=120; 
 Wdtfs=[-pi:2*pi/N:pi-2*pi/N]; 
 X3=fftshift(fft(x,N)); 

 subplot(3,1,3) 
 plot(Wdtft,abs(X)),hold on,stem(Wdtfs,abs(X3),'.') 
 xlabel('Omega'),ylabel('N=120'),axis tight 


 print P4_60_1.eps 