function optimNonGradient

% Importing material variable
global composite

% There are no equality constraints
A = [];
b = [];
Aeq = [];
beq = [];

% Lower and upper bounds
lb = [1, 0.60, 0.18];
ub = [4, 0.90, 0.30];

% Calling objective function and non-linear constraint function
objective = @deckCostWithDisc;
nonlcon = @deckConstraintsWithDisc;    

% Algorithm parameters
opts = optimoptions(@ga, ...
                    'PopulationSize', 150, ...
                    'MaxGenerations', 300, ...
                    'EliteCount', 10, ...
                    'FunctionTolerance', 1e-7);
                    %'PlotFcn', @gaplotbestf); Optional: to plot penalty value

fprintf('\n\nMINIMISE DECK COST WITH GENERATIVE ALGORITHM:\n');
fprintf('\nMatrix material: %s\nFiber material: %s\n\n', composite(1), composite(2));

rng default % For reproducibility
[xbest, fbest] = ga(objective, 3, A, b, Aeq, beq, lb, ub, nonlcon, 1, opts);
xbest = deckMapVariables(xbest);
cbest = deckConstraints(xbest);

fprintf('\nFinal cost = £%g\n', fbest);
fprintf('Number of ply = %g\nDeck length = %g mm\nDeck width = %g mm\n', xbest(1), xbest(2), xbest(3));
fprintf('Stress constraint = %g MPa\nStiffness constraint = %g KN\nCompliance constraint = %g KN\n', cbest(1)*10^(-6), cbest(2)*10^(-3), cbest(3)*10^(-3));