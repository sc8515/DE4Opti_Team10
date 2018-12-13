function [c, ceq] = deckConstraints(x)

    % Importing material variables
    global fiber matrix
    
    % Loading parameters
    F = 1176; % Load (N)
    stiffnessMax = 34000; % Max stiffness (N)
    stiffnessMin = 16000; % Min siffness (N)
    
    % Area fraction of fibers
    Af = floor(x(1)/2)/x(1);
    
    % Composite material properties
    E = (matrix(2)*fiber(2))/((1-Af)*fiber(2) + Af*matrix(2)); % Young's modulus   
    sigmaMax = matrix(1)*(1-Af) + fiber(1)*Af; % Tensile strength
        
    % Maximum stress
    stress = 3*F*x(2)/(x(3)*(0.0015*x(1))^2) - sigmaMax;
    
    % Board stiffness
    stiffness = (48*E*x(3)*(0.0015*x(1))^3/12)/(x(2))^2 - stiffnessMax;
    compliance = stiffnessMin - (48*E*x(3)*(0.0015*x(1))^3/12)/(x(2))^2;
    
    % All nonlinear inequality constraints
    c = [stress, stiffness, compliance];
    
    % There are no nonlinear equality constraints
    ceq = [];
end
