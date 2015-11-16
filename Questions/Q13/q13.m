phone = phonecalc128;
few = few128;
nallo = nallo128;

subplot(3,3,1);
showgrey(phone)
subplot(3,3,2);
showgrey(pow2image(phone,10e-10))
subplot(3,3,3);
showgrey(randphaseimage(phone))

subplot(3,3,4);
showgrey(few)
subplot(3,3,5);
showgrey(pow2image(few,10e-10))
subplot(3,3,6);
showgrey(randphaseimage(few))

subplot(3,3,7);
showgrey(nallo)
subplot(3,3,8);
showgrey(pow2image(nallo,10e-10))
subplot(3,3,9);
showgrey(randphaseimage(nallo))
