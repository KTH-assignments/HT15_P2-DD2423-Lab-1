function ret = gaussfft(pic, t)

  % The size of the input image
  N = size(pic, 1);

  % The new coordinate system
  [X Y] = meshgrid(-N / 2 : (N / 2) - 1, -N / 2 : (N / 2) - 1);

  % Since we are at the frequency domain, X,Y should be multiplied
  % by 2πu / N
  X = 2*pi * X / N;
  Y = 2*pi * Y / N;

  % Filter g in the frequency domain
  G = fftshift(exp(-(X.*X + Y.*Y) * t / 2));

  % Show G
  figure
  surf(fftshift(G))

  %FFT(pic)
  F = fft2(pic);

  % Multiply G and G in the frequency domain
  product = G .* F;

  % Transform back to the spatial domain
  ret = ifft2(product);

end
