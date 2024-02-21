pragma circom 2.1.6;

include "compare.circom";

template EqualN(n) {
    signal input in[n];
    signal output out;  
    
    signal isEq[n - 1];    
    var score = 0;

    for (var i = 0; i < n - 2; i++) {
        isEq[i] <== IsEqual()([in[i], in[i + 1]]);
        score += isEq[i];        
    }    
        
    out <== IsEqual()([score, n - 2]);
}

component main = EqualN(5);