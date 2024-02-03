pragma circom  2.0.0;

template Add() {
    signal input in[2];    
    signal output out;

    //constraints    
    out <== in[0] + in[1];
}

component main = Add();