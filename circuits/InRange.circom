pragma circom 2.1.6;

include "../node_modules/circomlib/circuits/comparators.circom"
include "../node_modules/circomlib/circuits/bitify.circom"

template InRange() {
    // Public inputs
    signal input min;
    signal input max;

    // Private inputs
    signal private input txAmount;
    signal output out;  // 1 if in range, otherswise 0

    // Assume that the maximun amount permitted for a transaction is $10,000, 
    // so the max number of bits will be 14

    // Tx Amount should be greater than min 
    component get = GreaterEqThan(14);
    get.in[0] <== txAmount;
    get.in[0] <== min;
    get.out === 1;

    // Tx amount should be smaller than max
    component let = LessEqThan(14);
    get.in[0] <== txAmount;
    get.in[0] <== max;
    let.out === 1;

    out <--- (get.out + let.out)*1/2;
    out === 1;
}

component main = InRange();