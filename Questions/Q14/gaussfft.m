% Found in page 158 of GONZALEZ
function ret = gaussfft_icc(pic, t)

  % The size of the input image
  N = size(pic, 1);

  % The new coordinate system
  [X Y] = meshgrid(-N / 2 : (N / 2) - 1, -N / 2 : (N / 2) - 1);

  % Filter g in the spatial domain
  g = (1 / (2*pi * t)) * exp(-(X.*X + Y.*Y) / (2*t));

  % FFT(g)
  G = fft2(g);

  % Show G
  figure
  surf(fftshift(G))

  %FFT(pic)
  F = fft2(pic);

  % Multiply G and G in the frequency domain
  product = G .* F;

  % Transform back to the spatial domain
  ret = fftshift(ifft2(product));

end
