function system = mdlInitializeSizes(T_s)
    global state
    
    state.P_ = [1 0 0 0 0;
                0 0.013 0 0 0;
                0 0 pi^2 0 0;
                0 0 0 1 0;
                0 0 0 0 0.0025];
            
    state.x_ = [0; 0; 0; 0; 0];
    
    state.R_v = (6.132*10^-7)/T_s;
    
    system = [0 0];
end