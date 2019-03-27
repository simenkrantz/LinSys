function system = mdlUpdate(u, y)
    global state

    %Update measurement covariance
    R = var(ship.signals.values)*(pi/180)^2; %unit: [rad^2]
    R_v = R/T_s;
    
    P_ = state.P_;
    x_ = state.x_;
    
    %update with measurement
    K = P_*C'*inv(C*P_*C' + R_v);         %Kalman gain
    x = x_ + K.*(y-C.*x_);                  %Linear observer
    P = (I-K.*C).*P_.*(I-K.*C)' + K.*R_v.*K'; %Update error covariance
    
    %predict for next step
    x_ = A.*x + B.*u;
    P_ = A.*P.*A' + E.*Q.*E';
    
    state.P_ = P_;
    state.x_ = x_;
    state.x = x;
    system = [0 0];

end