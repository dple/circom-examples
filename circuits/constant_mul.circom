pragma circom  2.0.0;

include "../node_modules/circomlib/circuits/comparators.circom";

template constant_mul(n) {
    signal input in;
    signal output out;
    signal inv;

    inv <-- 1/n;
    
    component ise = IsEqual();
    ise.in[0] <== n*inv;
    ise.in[1] <== 1;
    out <== in*n;
}

component main = constant_mul(5);