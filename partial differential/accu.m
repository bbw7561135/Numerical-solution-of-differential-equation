t=0:0.25:0.5;
x=0:0.1:1;
m=0;
sol=pdepe(m,@pdefun,@pdeic,@pdebc,x,t);
ua = sol(:,:,1)';

function[c,f,s]=pdefun(x,t,u,DuDx)  %����ƫ΢�ַ��̺���
    c=1;
    f=DuDx;
    s=0;
end

function[u0]=pdeic(x)   %����ƫ΢�ַ��̵ĳ�ʼ��������
    u0=sin(pi*x);
end

function[pl,ql,pr,qr]=pdebc(xl,ul,xr,ur,t)   %����ƫ΢�ַ��̵ı߽���������
    pl = ul;
    ql = 0;
    pr = ur;
    qr = 0;
end