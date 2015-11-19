function q19_out = q19(img, variant, freq)

  if variant == 1
    smoothimg = gaussfft_icc(img, freq);
  else
    smoothimg = ideal(img, freq);
  end


  % generate subsampled versions
  img = rawsubsample(img);
  smoothimg = rawsubsample(smoothimg);


  subplot(2, 2, 1)
  showgrey(img)

  subplot(2, 2, 2)
  showgrey(log(1+abs(fftshift(fft2(img)))))

  subplot(2, 2, 3)
  showgrey(smoothimg)

  subplot(2, 2, 4)
  showgrey(log(1+abs(fftshift(fft2(smoothimg)))))

end
