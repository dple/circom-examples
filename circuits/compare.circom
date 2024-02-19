pragma circom  2.0.0;

include "bits.circom";

template IsZero() {
    signal input in;
    signal output out;

    signal inv;
    // constrainsts
    inv <-- in != 0? 1/in: 0;
    out <== 1 - in * inv;
    out * in === 0;
}

template IsEqual() {
    signal input in[2];
    signal output out;

    // Constrainsts
    out <== IsZero()(in[0]- in[1]);
}

template ForcedEqual() {
    signal input enabled;
    signal input in[2];

    signal isz <== IsEqual()([in[0], in[1]]);

    (1 - isz)*enabled === 0;
}

template LessThan() {
    
}

component main = ForcedEqual();