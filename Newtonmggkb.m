function [ mu ] = Newtonmggkb ( b , c , l , epsilon_dp )

syms m
p=norm(b,'fro')^2*eye(l,1)'*(m*c*c'+eye(l))^(-2)*eye(l,1)-epsilon_dp^2;
q=diff(p);

% phi=inline(char(p));
% dphi=inline(char(q));

%m=newton(phi,dphi,1,10^-15);
mu=N(p,q,0,1e-10);
end



