function [ m ] = Newtongkb( b , c , l , epsilon )

syms m
p=norm(b)^2*eye(l,1)'*(m*c*c'+eye(l))^(-2)*eye(l,1)-epsilon^2;
q=diff(p);

m=N(p,q,0,1e-10);


end

