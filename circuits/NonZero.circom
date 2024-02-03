pragma circom  2.1.6;

template NonZero() {
    signal input  in;
    signal inv;
    signal output out;

    // Constrainst
    inv <-- 1 / in;
    1 === in * inv;

    out <== in * inv;
}

component main = NonZero();