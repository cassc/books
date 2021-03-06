%Spectrogram of cow signal
[y1,fs1]=wavread('cow1.wav'); %read wav file
soundsc(y1,fs1); %hear the signal
[sgy,fy,ty]=specgram(y1,512,fs1); %spectrogram coputation
colmap1; colormap(mapg1); %user colormap
imagesc(ty,fy,log10(0.3+abs(sgy))); axis xy; %plots the spectrogram
title('spectrogram of cow signal')
xlabel('seconds'); ylabel('Hz');
axis([0 1.57 0 3000]);
