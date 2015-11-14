clear;

F=[zeros(56,128); ones(16,128); zeros(56,128)];
G = F';
C = F .* G;

figure(1);
showgrey(C);

figure(2);
showfs(fft2(C));

% Fourier transform of the original images F and G
Fhat = fft2(F);
Ghat = fft2(G);

% Convolution of the Fourier transforms of F and G
Chat = conv2(Fhat, Ghat);

% Normalization factor
norm = 128^2;
Chat = Chat / norm;

% Keep the part that is useful
Chat = Chat(1:128, 1:128);

figure(3);
showfs(Chat);
