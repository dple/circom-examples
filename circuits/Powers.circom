pragma circom  2.1.6;

template Powers() {
    signal input a;
    signal output powers[8];

    powers[0] <== a;
    for (var i = 1; i < 6; i++) {
        powers[i] <== powers[i - 1] * a;
    }
}

component main = Powers();