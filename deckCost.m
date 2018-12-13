function C = deckCost(x)
    
    % Importing material variables
    global fiber matrix 
    
    % Area fraction of fibre material
    Af = floor(x(1)/2)/x(1);

    % Cost of the deck
    C = (Af*fiber(3) + (1-Af)*matrix(3)) * x(1)*x(2)*x(3);
