function dXdt = lorenzSystem(t, X, params)
    sigma = params(1);
    r = params(2);
    b = params(3);

    x = X(1);
    y = X(2);
    z = X(3);

    dx = sigma * (y - x);
    dy = x * (r - z) - y;
    dz = x * y - b * z;

    dXdt = [dx; dy; dz];
end
