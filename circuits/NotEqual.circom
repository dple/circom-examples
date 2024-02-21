pragma circom  2.1.6;

include "comparators.circom";

template NotEqual() {
    signal input in[2];
    signal output out; // if not equal, output 1, else output 0

    // Constraints
    signal ise <== IsEqual()([in[0], in[1]]);
    out <== 1 - ise;
    out*ise === 0;
}

component main = NotEqual();