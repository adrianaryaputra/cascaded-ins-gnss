function [tbl] = correction4imu(calibratorPath, tbl)
    cb = load(calibratorPath, "mv1");
    cb = cb.mv1;


    tbl.i2c__cimu1__accel__x = tbl.i2c__bimu1__accel__x - cb(1,1);
    tbl.i2c__cimu1__accel__y = tbl.i2c__bimu1__accel__y - cb(2,1);
    tbl.i2c__cimu1__accel__z = tbl.i2c__bimu1__accel__z - cb(3,1) + 9.80665;

    tbl.i2c__cimu2__accel__x = tbl.i2c__bimu2__accel__x - cb(1,2);
    tbl.i2c__cimu2__accel__y = tbl.i2c__bimu2__accel__y - cb(2,2);
    tbl.i2c__cimu2__accel__z = tbl.i2c__bimu2__accel__z - cb(3,2) + 9.80665;

    tbl.i2c__cimu3__accel__x = tbl.i2c__bimu3__accel__x - cb(1,3);
    tbl.i2c__cimu3__accel__y = tbl.i2c__bimu3__accel__y - cb(2,3);
    tbl.i2c__cimu3__accel__z = tbl.i2c__bimu3__accel__z - cb(3,3) + 9.80665;

    tbl.i2c__cimu4__accel__x = tbl.i2c__bimu4__accel__x - cb(1,4);
    tbl.i2c__cimu4__accel__y = tbl.i2c__bimu4__accel__y - cb(2,4);
    tbl.i2c__cimu4__accel__z = tbl.i2c__bimu4__accel__z - cb(3,4) + 9.80665;
    

    tbl.i2c__cimu1__gyro__x = tbl.i2c__bimu1__gyro__x - cb(4,1);
    tbl.i2c__cimu1__gyro__y = tbl.i2c__bimu1__gyro__y - cb(5,1);
    tbl.i2c__cimu1__gyro__z = tbl.i2c__bimu1__gyro__z - cb(6,1);

    tbl.i2c__cimu2__gyro__x = tbl.i2c__bimu2__gyro__x - cb(4,2);
    tbl.i2c__cimu2__gyro__y = tbl.i2c__bimu2__gyro__y - cb(5,2);
    tbl.i2c__cimu2__gyro__z = tbl.i2c__bimu2__gyro__z - cb(6,2);

    tbl.i2c__cimu3__gyro__x = tbl.i2c__bimu3__gyro__x - cb(4,3);
    tbl.i2c__cimu3__gyro__y = tbl.i2c__bimu3__gyro__y - cb(5,3);
    tbl.i2c__cimu3__gyro__z = tbl.i2c__bimu3__gyro__z - cb(6,3);

    tbl.i2c__cimu4__gyro__x = tbl.i2c__bimu4__gyro__x - cb(4,4);
    tbl.i2c__cimu4__gyro__y = tbl.i2c__bimu4__gyro__y - cb(5,4);
    tbl.i2c__cimu4__gyro__z = tbl.i2c__bimu4__gyro__z - cb(6,4);

end

