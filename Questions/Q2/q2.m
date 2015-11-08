% Image size 128 x 128
sz = 128;

% Set point (p,q)
p = 5;
q = 9;

% Image in the spatial domain
img = zeros(sz, sz);

% Loop the spatial image and compute the value for each pixel
for x = 1 : sz
  for y = 1 : sz
    w = 2 * pi * (x * p + y * q) / sz;
    img(x, y) = 1 / (sz^2) * (cos(w) + i * sin(w));
  end
end

% The real part of the spatial image
re = real(img);

% The imaginary part of the spatial image
im = imag(img);


% Show the real part of the spatial image
figure
showgrey(re)

% Show the undelying sine waveform for every row of the spatial image
figure
for i = 1 : sz
    plot(re(:,i))
    pause(0.1)
end
