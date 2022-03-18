mdl_puma560

p = [0.8 0 0];
T = transl(p) * troty(pi/2);
qr(1) = -pi/2;
qqr = p560.ikine6s(T, 'ru');
qrt = jtraj(qr, qqr, 50);

plot_sphere(p, 0.05, 'y');
p560.plot3d(qrt, 'movie', 'move2ball.gif');