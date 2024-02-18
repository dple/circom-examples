pragma circom  2.0.0;

include "../node_modules/circomlib/circuits/comparators.circom";

template constant_mul() {
    signal input a;
    signal input fiveA;

    signal isEq <== IsEqual()([fiveA, a*5]);

    1 === isEq;
}

component main {public [fiveA]} = constant_mul();