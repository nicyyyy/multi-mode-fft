function [Xk]=fft_j2(xn)
M=nextpow2(length(xn));
N=2^M;

if length(xn)<N;
    xn=[xn,zeros(1,N-length(xn))];
end
n=1:N;
x=xn(bitrevorder(n-1)+1);
for m=0:N/2-1
%     W(m+1)=exp(-j*2*pi/N)^m;
        W(m+1)=complex(cos(2*pi*m/N),-sin(2*pi*m/N));
%             W(m+1)=complex(floor(cos(2*pi*m/N)*(2^7-1)),floor(-sin(2*pi*m/N)*(2^7-1)));
end
for L=1:M%级数
    B=2^(L-1);%间隔
    for J=0:B-1%
        P=2^(M-L)*J;%旋转因子的位置
        for K=J:2^L:N-2%位置索引，计算间隔2^L的蝶形运算组
%             [L,B,J,P,K]
            [T1_re, T1_im, T2_re,T2_im] = butterfly(real(x(K + 1)),imag(x(K + 1)),real(x(K+B + 1)),imag(x(K+B + 1)),...
                real(W(P+1)),imag(W(P+1)));
%             P
%             [floor(T2_re*(2^10)),floor(T2_im*(2^10))]
%             floor(T2_re*2^14)
%             floor(real(W(P+1))*2^14)
            x(K+B+1) = complex(T2_re,T2_im);
            x(K+1) = complex(T1_re,T1_im);
%             T=x(K+1)+x(K+B+1)*W(P+1);
%             x(K+B+1)=x(K+1)-x(K+B+1)*W(P+1);
%             x(K+1)=T;
        end
    end
end
Xk=x;
        

