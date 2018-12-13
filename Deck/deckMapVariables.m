function x = deckMapVariables(x)

% The possible values for x(1)
% allX1 = [0.0084, 0.0098, 0.0112, 0.0126];
allX1 = [6,7,8,9];

% Map x(1) from the integer values used by GA to the discrete values required.
x(1) = allX1(x(1)); 
