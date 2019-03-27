function [b, psi, psi_w] = kalman_filter_func(u, y)
    persistent init_flag A B C E Q R_v P_ x_ I

    if isempty(init_flag)
        init_flag = 1;
        %initialize the matrices
        matrices = load('task55.mat');
        A = matrices.A_d;
        B = matrices.B_d;
        C = matrices.C_d;
        E = matrices.E_d;
        Q = matrices.Q;
        R_v = matrices.R_v;
        P_ = matrices.P_;
        x_ = matrices.x_;
        I = matrices.I;
    end
    
    %update with measurement
    K = P_*C'*inv(C*P_*C' + R_v);         %Kalman gain
    x = x_ + K*(y-C*x_);                  %Linear observer
    P = (I-K*C)*P_*(I-K*C)' + K*R_v*K'; %Update error covariance
    
    %predict for next step
    x_ = A*x + B*u;
    P_ = A*P*A' + E*Q*E';
    
    b = x(5);
    psi = x(3);
    psi_w = x(2);
end