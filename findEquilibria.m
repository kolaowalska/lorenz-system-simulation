syms x y z sigma r b

eq1 = sigma * (y - x);
eq2 = x * (r - z) - y;
eq3 = x * y - b * z;

solution = solve([eq1 == 0, eq2 == 0, eq3 == 0], [x, y, z], 'Real', true);

disp(solution.x);
disp(solution.y);
disp(solution.z);
