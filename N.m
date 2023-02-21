function [ m  ] = N ( f ,g ,x0 ,e )

x=x0;
i=1;
z=double(subs(f,x(i)));
if double(subs(g,x(i)))==0
    error('We can''t compute the root');
end
while abs(z)>=e
x(i+1)=x(i)-(subs(f,x(i))/subs(g,x(i)));

i=i+1;
z=double(subs(f,x(i)));

w=x(i);
end
m=w;




