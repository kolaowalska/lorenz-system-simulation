syms x y z sigma r b

J = [-sigma,    sigma,       0;
      r - z,    -1,         -x;
      y,         x,         -b ];

% equilibrium point: (xE, yE, zE) = (0, 0, 0)
xE = 0;
yE = 0;
zE = 0;

sigmaValue = 10;
rValue = 28;
bValue = 8/3;

jacobian = subs(J, {x, y, z, sigma, r, b}, {xE, yE, zE, sigmaValue, rValue, bValue});
eigenvalues = eig(jacobian);

disp('Eigenvalues at the trivial equilibrium (0, 0, 0): ');
disp(eigenvalues);
