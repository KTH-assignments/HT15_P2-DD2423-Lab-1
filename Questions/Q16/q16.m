phone = phonecalc128;
few = few128;
nallo = nallo128;

% Adjust accordingly
pic = nallo;
t = 256;

% Use discgaussfft as it is ideal
psf = discgaussfft(pic, t);
showgrey(psf);
