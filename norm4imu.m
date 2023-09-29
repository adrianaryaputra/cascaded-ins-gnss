function [tbl] = norm4imu(tbl)
    % IMU 1 DEPAN
    tbl.i2c__bimu1__accel__x = -tbl.i2c__imu1__accel__y;
    tbl.i2c__bimu1__accel__y = -tbl.i2c__imu1__accel__x;
    tbl.i2c__bimu1__accel__z = tbl.i2c__imu1__accel__z;

    tbl.i2c__bimu1__gyro__x = deg2rad(-tbl.i2c__imu1__gyro__y);
    tbl.i2c__bimu1__gyro__y = deg2rad(-tbl.i2c__imu1__gyro__x);
    tbl.i2c__bimu1__gyro__z = deg2rad(tbl.i2c__imu1__gyro__z);


    % IMU 3 KANAN
    tbl.i2c__bimu3__accel__x = -tbl.i2c__imu3__accel__y;
    tbl.i2c__bimu3__accel__y = -tbl.i2c__imu3__accel__x;
    tbl.i2c__bimu3__accel__z = tbl.i2c__imu3__accel__z;

    tbl.i2c__bimu3__gyro__x = deg2rad(-tbl.i2c__imu3__gyro__y);
    tbl.i2c__bimu3__gyro__y = deg2rad(-tbl.i2c__imu3__gyro__x);
    tbl.i2c__bimu3__gyro__z = deg2rad(tbl.i2c__imu3__gyro__z);


    % IMU 2 KIRI
    tbl.i2c__bimu2__accel__x = tbl.i2c__imu2__accel__y;
    tbl.i2c__bimu2__accel__y = tbl.i2c__imu2__accel__x;
    tbl.i2c__bimu2__accel__z = tbl.i2c__imu2__accel__z;
    
    tbl.i2c__bimu2__gyro__x = deg2rad(tbl.i2c__imu2__gyro__y);
    tbl.i2c__bimu2__gyro__y = deg2rad(tbl.i2c__imu2__gyro__x);
    tbl.i2c__bimu2__gyro__z = deg2rad(tbl.i2c__imu2__gyro__z);


    % IMU 4 BELAKANG
    tbl.i2c__bimu4__accel__x = -tbl.i2c__imu4__accel__x;
    tbl.i2c__bimu4__accel__y = tbl.i2c__imu4__accel__y;
    tbl.i2c__bimu4__accel__z = tbl.i2c__imu4__accel__z;

    tbl.i2c__bimu4__gyro__x = deg2rad(-tbl.i2c__imu4__gyro__x);
    tbl.i2c__bimu4__gyro__y = deg2rad(tbl.i2c__imu4__gyro__y);
    tbl.i2c__bimu4__gyro__z = deg2rad(tbl.i2c__imu4__gyro__z);
end

