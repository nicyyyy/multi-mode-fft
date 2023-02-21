clear all ;
clc ;
N = 512;
for m=0:N/2-1
W(m+1)=complex(cos(2*pi*m/N),-sin(2*pi*m/N));
end
r = real(W);
r = floor(r'*(2^14));
im = imag(W);
im = floor(im'*(2^14));
fidr = fopen('wn_re_256.coe','wt'); 
fidi = fopen('wn_im_256.coe','wt');
%- standard format
fprintf( fidr, 'MEMORY_INITIALIZATION_RADIX = 10;\n');                     
fprintf( fidr, 'MEMORY_INITIALIZATION_VECTOR =\n');
fprintf( fidi, 'MEMORY_INITIALIZATION_RADIX = 10;\n');                     
fprintf( fidi, 'MEMORY_INITIALIZATION_VECTOR =\n');
%- write data in coe file
for i = 1:1:N/2
    fprintf(fidr,'%d,\n',r(i));  
    fprintf(fidi,'%d,\n',im(i));  
end
fclose(fidr);
fclose(fidi);