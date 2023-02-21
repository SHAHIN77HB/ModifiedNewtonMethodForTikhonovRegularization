function [ mu ] = Newtonm ( E , r1 , c , epsilon_dp , eta  )

syms m
p=trace(r1'*E'*f_mu(m,c*c')*E*r1)-(epsilon_dp^2*eta^2);
q=diff(p);

% phi=inline(char(p));
% dphi=inline(char(q));

%m=newton(phi,dphi,1,10^-15);
mu=N(p,q,1,1e-10);
end

