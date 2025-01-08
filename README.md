The aim of this project was to simulate and analyze the behavior of the Lorenz system using MATLAB, focusing on its chaotic dynamics, equilibrium points, stability, and high sensitivity to small changes in initial conditions.

The equations used for this dynamical system are:

$$
\begin{aligned}
\frac{dx}{dt} &= \sigma (y - x), \\
\frac{dy}{dt} &= x (\rho - z) - y, \\
\frac{dz}{dt} &= x y - \beta z.
\end{aligned}
$$

Where:
- $\(x, y, z\)$ are state variables representing the system's evolution over time,
- $\(\sigma, \rho, \beta\)$ are parameters:
  - $\(\sigma\)$: the Prandtl number (related to the fluid's viscosity properties),
  - $\(\rho\)$: the Rayleigh number (related to the temperature difference driving convection),
  - $\(\beta\)$: certain physical dimensions of the layer; a geometrical factor
 
The aim of this was to show how this system is deterministic but exhibits sensitive dependence on initial conditions (a hallmark of chaos). Small differences in starting conditions lead to drastically different trajectories over time.

Equilibrium points are obtained by solving:

$$
\begin{aligned}
\sigma (y - x) = 0, \quad x (\rho - z) - y = 0, \quad x y - \beta z = 0.
\end{aligned}
$$

The Lorenz system is numerically integrated using `ode45` in MATLAB. The equations are defined in a separate function (`lorenzSystem.m`). A 3D phase space plot of the trajectory reveals the butterfly-shaped Lorenz attractor. Symbolic computation is used to solve for equilibrium points and calculate the Jacobian matrix, and MATLAB's `eig` function is used to determine stability.
