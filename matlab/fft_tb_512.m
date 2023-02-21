%%
%初始化
clear all
clc
N = 512;
t = 1:1:N;
X_re = cos(1/3*pi*t);
X_im = zeros(1,N);
X = complex(X_re,X_im);
X_fft = (fft(X));
% figure(1)
% subplot(2,1,1);plot(real(X_fft));
% subplot(2,1,2);plot(imag(X_fft));
%时域序列转换为二进制补码并保存
X_re_16bit = floor(X_re*(2^8));
X_im_16bit = floor(X_im*(2^8));
fd_re = fopen("x_re512.txt",'wb');
fd_im = fopen("x_im512.txt",'wb');
for i =1:N
      fprintf(fd_re,'%04x\r\n',typecast(int16(X_re_16bit),'uint16'));
      fprintf(fd_im,'%04x\r\n',typecast(int16(X_im_16bit),'uint16'));
end
fclose(fd_re);
fclose(fd_im);
%频域序列转换为二进制补码并保存
X_fft_re_16bit = floor(real(X_fft)*(2^7));
X_fft_im_16bit = floor(imag(X_fft)*(2^7));
fd_re = fopen("x_fft512_re.txt",'wb');
fd_im = fopen("x_fft512_im.txt",'wb');
for i =1:N
      fprintf(fd_re,'%04x\r\n',typecast(int16(X_fft_re_16bit),'uint16'));
      fprintf(fd_im,'%04x\r\n',typecast(int16(X_fft_im_16bit),'uint16'));
end
fclose(fd_re);
fclose(fd_im);
%%
X_16bit = complex(X_re_16bit,X_im_16bit);
y = fft_j2(X);
% figure(2)
% plot(abs(y))
% y_re = floor(real(y)*(2^10));

%%
%fft与ifft结果比较
f1=fopen('E:\my_verilog\adv\fft\doc\y_re_fft512.txt','r');
[y_re_fft,num1]=fscanf(f1,'%04x',[1 inf]);
f2=fopen('E:\my_verilog\adv\fft\doc\y_im_fft512.txt','r');
[y_im_fft,num2]=fscanf(f2,'%04x',[1 inf]);
%转换为有符号数
y_re_fft_singed = unsigned2signed(y_re_fft,16)./(2^8);
y_im_fft_singed = unsigned2signed(y_im_fft,16)./(2^8);

% figure(3)
% k = 1:1:N;
% subplot(2,1,1);plot(y_re_fft_singed);
% subplot(2,1,2);plot(y_im_fft_singed);

f1=fopen('E:\my_verilog\adv\fft\doc\y_re_ifft512.txt','r');
[y_re_ifft,num1]=fscanf(f1,'%04x',[1 inf]);
f2=fopen('E:\my_verilog\adv\fft\doc\y_im_ifft512.txt','r');
[y_im_ifft,num2]=fscanf(f2,'%04x',[1 inf]);
%转换为有符号数
y_re_ifft_singed = unsigned2signed(y_re_ifft,16)./(2^7);
y_im_ifft_singed = unsigned2signed(y_im_ifft,16)./(2^7);

% figure(4)
% k = 1:1:N;
% % plot(y_re_ifft64_singed + y_im_ifft64_singed)
% subplot(2,1,1);plot(y_re_ifft_singed);
% subplot(2,1,2);plot(y_im_ifft_singed);
%%
%综合比较
k = 1:1:N;
X_std = abs(X_fft);
X_sim = abs(complex(y_re_fft_singed,y_im_fft_singed));
mean(abs(X_sim - X_std))

figure(5)
subplot(2,1,1);plot(k,X_std,'LineWidth',1.5);title('512点fft标准结果')
grid on
subplot(2,1,2);plot(k,X_sim,'LineWidth',1.5);title('512点fft仿真结果')
grid on
% title('256点fft结果比较');
% legend({'标准结果','仿真结果'});

mean(abs(X - y_re_ifft_singed))
figure(6)
subplot(2,1,1);plot(k,X,'LineWidth',1.5);title('512点ifft标准结果')
grid on
subplot(2,1,2);plot(k,y_re_ifft_singed,'LineWidth',1.5);title('512点ifft仿真结果')
grid on
% title('256点ifft结果比较');
% legend({'标准结果','仿真结果'});