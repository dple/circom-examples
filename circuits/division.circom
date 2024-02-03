pragma circom  2.0.0;

template Division() {
    signal input in1;
    signal input in2;
    signal input in3;
    signal input in4;
    signal output out;

    signal x1;
    signal x2; 
    // Constrainsts
    x1 <== in1 + in2;
    x2 <-- in3 != 0? x1 / in3 : 0;
    //x2 * in3 === 1;
    out <== x2 - in4;
}

component main { public [ in2 ] } = Division();