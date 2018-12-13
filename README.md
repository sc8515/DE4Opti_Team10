# Cost optimisation of an electric skateboard
Clarisse Bret, Sergi Capdevila

The purpose of this project is to optimise the price of electric skateboards by focusing on the price of the deck and the wheels. The main barriers to price is safety in the shape of minimum load required to be supported. For the optimisation of both subsystems, fmincon and ga algorithmic models have been explored and applied. results are a deck with a cost of £18.8 and wheels with a cost of £0.54 each.

# Prerequesites

The [Global Optimisation Toolbox](https://uk.mathworks.com/products/global-optimization.html)


# 1. Skaeboard cost


# 2. Deck cost

## Start

- Open [materialSelection](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Deck/materialSelection.mat) in your workspace to import properties of the 16 pre-selected materials.
- Execute [runScenario](https://github.com/clarissebret/DE4Opti_Team10/blob/master/Deck/runScenarios.m). This script runs 3 scenario segments:

    1. The deck is made of a single type of wood. As matrix, the ply is cut parallel to grain. As fibre, the ply is cut perpendicular to grain (e.g., transversal birch reinforced with longitudinal birch).
    2. The deck is made of a wood matrix reinforced by bamboo (e.g., transversal birch reinforced with bamboo).
    3. The deck is made of a wood matrix reinforced by glass fibres (e.g., transversal birch reinforced with PA66 glass fibre).
    
## Materials

Maple (acer rubrum), Birch (betula verrucosa), Pine (pinus elloittii), Bamboo, Ash (fraxinus excelsior), Oak (quercus virginiana), Beech (fagus sylvatica), PA66 (40% long glass fiber)


# 3. Wheel cost
    

