pragma circom  2.1.6;

template pow() {
    signal input a;
    signal input e;
    signal output out;

    signal exp[e];
    exp[0] <== a;
    for(var i = 1; i < e; i++) {
        exp[i] <== exp[i - 1]*a;
    }

    out <== exp[e-1]; 
}

component main = pow();