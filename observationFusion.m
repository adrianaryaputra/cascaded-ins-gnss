function [delta_v_bar_fB, delta_theta_IBB] = observationFusion(delta_v_fB, delta_theta_IBB, r_IMU_B, epsilon)
    % Input:
    % delta_v_fB: n x 3 matrix of Delta v_fi^B measurements
    % delta_theta_IBB: n x 3 matrix of Delta theta_IBi^B measurements
    % r_IMU_B: n x 3 matrix of position vectors r_IMU_i^B
    % epsilon: Small positive number to avoid division by zero

    % Calculate the weights for force measurements
    w_g = abs(delta_v_fB - median(delta_v_fB)).*vecnorm(r_IMU_B, 2, 2) + epsilon;

    % Calculate the weights for gyro measurements
    w_omega = abs(delta_theta_IBB - median(delta_theta_IBB)).*vecnorm(r_IMU_B, 2, 2) + epsilon;

    % Calculate weighted sums
    weighted_sum_v = sum(delta_v_fB ./ w_g, 1);
    weighted_sum_theta = sum(delta_theta_IBB ./ w_omega, 1);

    % Calculate the weighted average
    delta_v_bar_fB = weighted_sum_v / sum(1 ./ w_g);
    delta_theta_IBB = weighted_sum_theta / sum(1 ./ w_omega);
end
