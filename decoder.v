module decoder(out, in);
    output [6:0] out;
    input [3:0]in;
    wire [6:0]not_out;

    assign not_out[0] = in[3] | in[1] | (in[2] & in[0]) | (~in[2] & ~in[0]);
    assign not_out[1] = ~in[2] | (~in[1] & ~in[0]) | (in[1] & in[0]);
    assign not_out[2] = in[2] | ~in[1] | in[0];
    assign not_out[3] = (~in[2] & ~in[0]) | (in[1] & ~in[0]) | (in[2] & ~in[1] & in[0]) | (~in[2] & in[1]) | in[3];
    assign not_out[4] = (~in[2] & ~in[0]) | (in[1] & ~in[0]);
    assign not_out[5] = in[3] | (~in[1] & ~in[0]) | (in[2] & ~in[1]) | (in[2] & ~in[0]);
    assign not_out[6] = in[3] | (in[2] & ~in[1]) | (~in[2] & in[1]) | (in[1] & ~in[0]);
    not (out[0], not_out[0]);
    not (out[1], not_out[1]);
    not (out[2], not_out[2]);
    not (out[3], not_out[3]);
    not (out[4], not_out[4]);
    not (out[5], not_out[5]);
    not (out[6], not_out[6]);
endmodule