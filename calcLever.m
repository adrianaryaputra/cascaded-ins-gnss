function delta_v = calcLever(delta_v_bar, omega, alpha, r_IMU_B)
    % Input:
    % delta_v_bar: Column vector representing Delta v bar [dvx; dvy; dvz]
    % omega: Column vector representing angular velocity [omega_x; omega_y; omega_z]
    % alpha: Column vector representing angular acceleration [alpha_x; alpha_y; alpha_z]
    % r_IMU_B: Column vector representing position vector r_IMU^B [r_x; r_y; r_z]

    % Calculate the matrix A
    A = [(omega(2)^2 + omega(3)^2), -(omega(1) * omega(2) - alpha(3)), -(omega(1) * omega(3) + alpha(2));
         -(omega(1) * omega(2) + alpha(3)), (omega(1)^2 + omega(3)^2), -(omega(2) * omega(3) - alpha(1));
         -(omega(1) * omega(3) - alpha(2)), -(omega(2) * omega(3) + alpha(1)), (omega(1)^2 + omega(2)^2)];

    % Calculate delta_v using the formula
    delta_v = delta_v_bar + A * r_IMU_B;
end