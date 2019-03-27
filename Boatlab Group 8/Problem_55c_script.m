function [b, psi] = kalman_filter_func(u, y, matrices)
    persistent init_flag A B C E Q R P_ x_ I
    
    
    if isempty(init_flag)
        init_flag = 1;
        %initialize the matrices
        A = matrices.A_d;
        B = matrices.B_d;
        C = matrices.C_d;
        E = matrices.E_d;
        Q = matrices.Q;
        R = matrices.R;
        P_ = matrices.P_0;
        x_ = matrices.x_0;
        I = matrices.I;
    end
    
    %update with measurement
    K = P_.*C'.*inv(C.*P_.*C' + R);         %Kalman gain
    x = x_ + K.*(y-C.*x_);                  %Linear observer
    P = (I-K.*C).*P_.*(I-K.*C)' + K.*R.*K'; %Update error covariance
    
    %predict for next step
    x_ = A.*x + B.*u;
    P_ = A.*P.*A' + E.*Q.*E';
    

    
end