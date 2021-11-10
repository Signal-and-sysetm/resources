 %% PROBLEM 4.59 : 
 %% ============== 

 %% Part (a) : 
 %% ========== 

 W=[-3*pi:6*pi/500:3*pi-6*pi/500]; 
 X=sqrt(2*pi^3)*( exp(-(W-3*pi/2).^2/2) + exp(-(W+3*pi/2).^2/2) ); 

 figure(1)  
 plot(W,abs(X)),title('P4.59(a)'),xlabel('\omega'),ylabel('X(j\omega)'),axis tight 
 print P4_59_1.eps

 %% Part (b) : 
 %% ========== 
 T=1/3; 
 Xd1=1*ones(1,length(W)); 
 for n=1:25 
   Xd1=Xd1+2*cos(3*pi*n*T/2)*exp(-(n*T)^2/2)*cos(W*n*T); 
 end 

 figure(2)
 subplot(3,1,1) 
 plot(W,abs(Xd1)),title('P4.59(b)'),xlabel('\omega'),ylabel('Xd_1(j\omega)'),axis tight 

 


 %% Part (c) : 
 %% ========== 
 T=2/5; 
 Xd2=1*ones(1,length(W)); 
 for n=1:25 
   Xd2=Xd2+2*cos(3*pi*n*T/2)*exp(-(n*T)^2/2)*cos(W*n*T); 
 end 

 figure(2) 
 subplot(3,1,2) 
 plot(W,abs(Xd2)),title('P4.59(c)'),xlabel('\omega'),ylabel('Xd_2(j\omega)'),axis tight 


 %% Part (d) : 
 %% ========== 
 T=1/2; 
 Xd3=1*ones(1,length(W)); 
 for n=1:25 
   Xd3=Xd3+2*cos(3*pi*n*T/2)*exp(-(n*T)^2/2)*cos(W*n*T); 
 end 

 subplot(3,1,3) 
 plot(W,abs(Xd3)),title('P4.59(d)'),xlabel('\omega'),ylabel('Xd_3(j\omega)'),axis tight 

 print P4_59_2.eps 