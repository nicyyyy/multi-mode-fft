function [xn1_re,xn1_im,xn2_re,xn2_im] = butterfly(xm1_re,xm1_im,xm2_re,xm2_im,w_re,w_im)
%   此处显示详细说明
 xn1_re = xm1_re + xm2_re*w_re - (xm2_im*w_im);
 xn1_im = xm1_im + xm2_re*w_im + xm2_im*w_re;
 
 xn2_re = xm1_re - (xm2_re*w_re) + xm2_im*w_im;
 xn2_im = xm1_im - (xm2_re*w_im) - (xm2_im*w_re);
 
%  floor([xm2_re*w_re,xm2_im*w_im,xm2_re*w_im,xm2_im*w_re].*2^14)
end

