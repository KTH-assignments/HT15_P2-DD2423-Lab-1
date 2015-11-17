function q19_out = q19(img, N, freq)

  smoothimg = gaussfft_icc(img, freq);
  %smoothimg = ideal(img, freq);
  for i=1:N
    if i>1
      % generate subsampled versions
      img = rawsubsample(img);
      smoothimg = rawsubsample(smoothimg);
    end
    subplot(4, N, i)
    showgrey(img)

    subplot(4, N, i+N)
    showgrey(log(1+abs(fftshift(fft2(img)))))

    subplot(4, N, i+2*N)
    showgrey(smoothimg)

    subplot(4, N, i+3*N)
    showgrey(log(1+abs(fftshift(fft2(smoothimg)))))

  end

end
