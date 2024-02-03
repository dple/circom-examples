pragma circom  2.1.6;

template Inverse() {

    // Declaration of signals.
    signal input _in;
    signal output _out;

    // Constraints.
    signal inv <-- _in != 0? 1/_in : 0;
    
    _out <== inv;
}

component main = Inverse();
