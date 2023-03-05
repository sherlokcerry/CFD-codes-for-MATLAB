clc;clear;
nx=41;
dx=2/(nx-1);
x=2;
nt=20;
nu=0.3;
sigma=0.2;
dt=sigma*dx^2/nu;
u=ones(nx,1);
un=ones(nt,1);
u((.5/dx):(1/dx +1))=2;%帽函数
for i=1:nt
    un=u;
    for j=2:(nx-1)
        u(j)=un(j)+nu*dt/dx^2*(un(j+1)-2*un(j)+un(j-1));%扩散方程离散格式
    end
end
plot([0:dx:x],u)