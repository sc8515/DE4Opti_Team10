function C = deckCostWithDisc(x)

    % Map the discrete variables
    x = deckMapVariables(x);

    % Calling objective function
    C = deckCost(x);
