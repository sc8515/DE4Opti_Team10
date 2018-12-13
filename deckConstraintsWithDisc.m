function [c, ceq] = deckConstraintsWithDisc(x)

% Map the discrete variables
x = deckMapVariables(x);

% Calling non-linear constraint function
[c, ceq] = deckConstraints(x);