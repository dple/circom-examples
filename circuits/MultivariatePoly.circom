/**
    Evaluate the multivariate polynomial 3xˆ3 - 5xˆ2yˆ2 + 7xyˆ2 - 21y + 11
*/
pragma circom  2.1.6;

template multivariate() {
    signal input x;
    signal input y;
    signal output out;

    signal v1 <== x * x;
    signal v2 <== y*y;
    signal v3 <== 3*x * v1;
    signal v4 <== 5*v1*v2;
    out <== 7*x*v2 + v3 - v4 - 21*y + 11;
}

component main = multivariate();