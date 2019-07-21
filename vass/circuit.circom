include "../node_modules/circomlib/circuits/comparators.circom";

/*
 Encode the Petri-Net equivilant VASS as a cuicuit.

 see: https://en.wikipedia.org/wiki/Vector_addition_system
*/
template VAAS(n) {
    signal private input state[n];
    signal private input sub[n]; // REVIEW: circom to disallow negative values for signal,
                                 // so we break the action into two parts
    signal private input add[n];
    signal private input result[n];
    signal output yield[n];

    component eq[n];

    for (var i=0; i<n; i++) {

        eq[i] = IsEqual();
        eq[i].in[0] <-- result[i];
        eq[i].in[1] <-- state[i] - sub[i] + add[i];

        yield[i] ==> eq[i].out;
    }

}

// NOTE: to make use of this with another size petri-net
// update this to match the n-dimention of the Petri-Net you are working with
component main = VAAS(5);
