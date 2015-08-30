deff('dx=f(t,x)','dx=[x(2);-x(1)-3*x(2)]');
y=ode([1,-1]',0,[0:0.01:10],f)
scf;
fchamp(f,0,[-1:0.1:1]',[-1:0.1:1]')
plot(y(1,:),y(2,:))

// e --> 1+T_ds --> nonlinear -> 1/s^2 --> c
deff('dx=f(t,x)','dx=[x(2);-sign(x(1)+0.2*x(2))]');
y=ode([1,-1]',0,[0:0.01:10],f);
scf;
fchamp(f,0,[-2:0.2:2]',[-2:0.2:2]');
plot(y(1,:),y(2,:),)

// e --> 1+T_ds --> nonlinear -> 1/(s^2+0.2s+0.1) --> c
deff('dx=f(t,x)','dx=[x(2);(abs(x(1))<0.5)*(x(1))-0.1*x(1)-0.2*x(2)]');
y=ode([1,-1]',0,[0:0.01:20],f);
scf;
fchamp(f,0,[-1:0.1:1]',[-1:0.1:1]');
plot(y(1,:),y(2,:))