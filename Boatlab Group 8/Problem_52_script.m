%% calculation
load('wave.mat')
fs = 10;
window = 4096;
x = psi_w(2,:) .* (pi/180);

[pxx,f] = pwelch(x,window, [], [],fs);
w = f .* (2*pi);
pxx = pxx ./ (2*pi);

% plot(w, pxx);
% title('Estimated Power Spectral Density');
% xlabel('Frequency [rad/s]');
% ylabel('PSD intensity');
% xlim([0 1.6]);

%% find w_0 and sigma^2
[sigma2,max_index] = max(pxx);
w0 = w(max_index);

%% find lambda

p1 = plot(w, pxx, 'black');
hold on
p2 = plot(w, func(0.3, w, pxx),'b');
p3 = plot(w, func(0.01, w, pxx),'Color',[31/255 155/255 3/255]);
p4 = plot(w, func(0.09, w, pxx),'r');

set(p1,'LineWidth',2);
set([p2 p3 p4],'LineWidth',1.1);

xlabel('Frequency [rad/s]');
ylabel('PSD intensity');
legend('S_{\psi_w}','\lambda = 0.3','\lambda = 0.01','\lambda = 0.09')
xlim([0, 2]);

function P = func(lambda, Wx, Sx)
    [sigma2,max_index] = max(Sx);
    w0 = Wx(max_index);
    
    Kw = 2*lambda*w0*sqrt(sigma2);
    P = ((Wx.^2 * Kw^2)./((w0^2-Wx.^2).^2 + 4*lambda^2 * w0^2 * Wx.^2));
end
