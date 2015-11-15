% F
F = [zeros(60, 128); ones(8, 128); zeros(60, 128)] .* ...
[zeros(128, 48) ones(128, 32) zeros(128, 48)];

% Plot F
subplot(5,3,1);
showgrey(F);

% Plot FFT2(F)
Fhat = fft2(F);
subplot(5,3,2);
showfs(Fhat);

alpha = 30;

% G = F~30
G30 = rot(F,alpha);
subplot(5,3,4);
showgrey(G30);

% Plot FFT2(F~30)
G30hat = fft2(G30);
subplot(5,3,5);
showfs(G30hat);

% Rotate G back
G30hat_rot = rot(fftshift(G30hat), -alpha);
subplot(5,3,6);
showgrey(log(1 + abs(G30hat_rot)));


alpha = 45;

% G = F~45
G45 = rot(F,alpha);
subplot(5,3,7);
showgrey(G45);

% Plot FFT2(F~45)
G45hat = fft2(G45);
subplot(5,3,8);
showfs(G45hat);

% Rotate G back
G45hat_rot = rot(fftshift(G45hat), -alpha);
subplot(5,3,9);
showgrey(log(1 + abs(G45hat_rot)));


alpha = 60;

% G = F~60
G60 = rot(F,alpha);
subplot(5,3,10);
showgrey(G60);

% Plot FFT2(F~60)
G60hat = fft2(G60);
subplot(5,3,11);
showfs(G60hat);

% Rotate G back
G60hat_rot = rot(fftshift(G60hat), -alpha);
subplot(5,3,12);
showgrey(log(1 + abs(G60hat_rot)));


alpha = 90;

% G = F~90
G90 = rot(F,alpha);
subplot(5,3,13);
showgrey(G90);

% Plot FFT2(F~90)
G90hat = fft2(G90);
subplot(5,3,14);
showfs(G90hat);

% Rotate G back
G90hat_rot = rot(fftshift(G90hat), -alpha);
subplot(5,3,15);
showgrey(log(1 + abs(G90hat_rot)));
