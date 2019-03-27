function system = mdlOutput(t,x,u)
    global state
    system = [state.x(3) state.x(5)] %Extract b and psi
end