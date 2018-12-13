function optimGradient

% Importing material variable
global composite

% Lower and upper bounds
lb = [6, 0.60, 0.18];
ub = [9, 0.90, 0.30];

% Calling objective function and non-linear constraint function
objective = @deckCost;
nonlcon = @deckConstraints;

% Setting initial points
x0 = [6, 0.60, 0.18];

% Algorithm parameters
opts = optimoptions(@fmincon,'Algorithm','sqp');

fprintf('\n\nMINIMISE DECK COST WITH GLOBAL SEARCH:\n');
fprintf('\nMatrix material: %s\nFiber material: %s\n', composite(1), composite(2));

% Running the optimisation problem
rng default % For reproducibility
problem = createOptimProblem('fmincon','objective',...
   objective,'x0',x0,'lb',lb,'ub',ub,'options',opts,'nonlcon',nonlcon);
gs = GlobalSearch;
[xbest,fbest] = run(gs,problem);
cbest = deckConstraints(xbest);

fprintf('\nFinal cost = £%g\n', fbest);
fprintf('Number of ply = %g\nDeck length = %g mm\nDeck width = %g mm\n', xbest(1), xbest(2), xbest(3));
fprintf('Stress constraint = %g MPa\nStiffness constraint = %g KN\nCompliance constraint = %g KN\n', cbest(1)*10^(-6), cbest(2)*10^(-3), cbest(3)*10^(-3));
