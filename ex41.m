% Sample the sinusoid x = sin(2 pi f t), where f = 2 kHz, and plot the sampled
% signals over the continuous-time signal.
% Let x1 be the signal sampled at 10 kHz.
% Let x2 be the signal sampled at 3 kHz.
f = 2000;
T = 1/f;
tmin = 0;
tmax = 5*T;
dt = T/100;
dt1 = 1/10000;
dt2 = 1/3000;
t = tmin:dt:tmax;
t1 = tmin:dt1:tmax;
t2 = tmin:dt2:tmax;
x = sin(2*pi*f*t);
x1 = sin(2*pi*f*t1);
x2 = sin(2*pi*f*t2);
subplot(211)
plot(t,x,'r');
hold on
stem(t1,x1);
subplot(212)
plot(t,x,'r');
hold on
stem(t2,x2);
