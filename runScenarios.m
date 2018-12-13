clc

% Importing material variables
global fiber matrix composite

%% SEVEN PLYWOOD COMPOSITES

fprintf('\n\n\n-------\n\nPLYWOOD\n')

for i = 1:2:14
    

    matrix = [tensileStrength(i)*10^6, youngsModulus(i)*10^9, cost(i)];
    fiber = [tensileStrength(i+1)*10^6, youngsModulus(i+1)*10^9, cost(i+1)];
    composite = [name(i), name(i+1)];
    
    tic
    optimGradient
    toc
    
    tic
    optimNonGradient
    toc
    
end

%% SEVEN GLASS FIBER REINFORCED WOOD

fprintf('\n\n\n-------\n\nGLASS REINFORCED PLYWOOD\n')

for i = 1:2:14

    matrix = [tensileStrength(i)*10^6, youngsModulus(i)*10^9, cost(i)];
    fiber = [tensileStrength(15)*10^6, youngsModulus(15)*10^9, cost(15)];
    composite = [name(i), name(15)];
    
    tic
    optimGradient
    toc
    
    tic
    optimNonGradient
    toc
end

%% SEVEN BAMBOO REINFORCED WOOD

fprintf('\n\n\n-------\n\nBAMBOO REINFORCED PLYWOOD\n')

for i = 1:2:14

    matrix = [tensileStrength(i)*10^6, youngsModulus(i)*10^9, cost(i)];
    fiber = [tensileStrength(8)*10^6, youngsModulus(8)*10^9, cost(8)];
    composite = [name(i), name(8)];
    
    tic
    optimGradient
    toc
    
    tic
    optimNonGradient
    toc
    
end