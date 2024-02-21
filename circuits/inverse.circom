pragma circom  2.1.6;

template Inverse() {
    // Declaration of signals.
    signal input in;
    signal output out;
    assert(in != 0);

    // Constraints.
    signal inv <-- 1/in;

    out <== inv;
    1 === out*in;
}

component main = Inverse();
