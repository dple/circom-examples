pragma circom  2.0.0;

include "../node_modules/circomlib/circuits/comparators.circom";

template test() {
    signal input enabled;
    signal input in[2];

    component isz = IsZero();

    in[1] - in[0] ==> isz.in;

    (1 - isz.out)*enabled === 0;
}

component main = test();