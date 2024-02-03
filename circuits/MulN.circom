pragma circom  2.1.6;

template MulN(n) {
    signal input in[n];
    signal output out;

    signal tmp[n - 1];
    tmp[0] <== in[0] * in[1];
    for(var i = 1; i < n - 1; i++) {
        tmp[i] <== tmp[i - 1] * in[i + 1];
    }

    out <== tmp[n - 2];
}

component main = MulN(4);