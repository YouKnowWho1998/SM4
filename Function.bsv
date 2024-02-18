/*
 * @Author       : 中北大学-聂怀昊
 * @Date         : 2023-11-04 10:08:46
 * @LastEditTime : 2023-11-29 19:21:51
 * @FilePath     : \SM4\Function.bsv
 * @Description  : 
 * 
 * Copyright (c) 2023 by 873040830@qq.com, All Rights Reserved. 
 */

import Vector::*;


//function sbox
function Bit#(8) sbox(Bit#(8) a);

    Vector#(16, Vector#(16, Bit#(8))) x = newVector();

    x[0][0]  = 8'hd6;      x[1][0]  = 8'h2b;      x[2][0]  = 8'h9c;     x[3][0]  = 8'he4;
    x[0][1]  = 8'h90;      x[1][1]  = 8'h67;      x[2][1]  = 8'h42;     x[3][1]  = 8'hb3;
    x[0][2]  = 8'he9;      x[1][2]  = 8'h9a;      x[2][2]  = 8'h50;     x[3][2]  = 8'h1c;
    x[0][3]  = 8'hfe;      x[1][3]  = 8'h76;      x[2][3]  = 8'hf4;     x[3][3]  = 8'ha9;
    x[0][4]  = 8'hcc;      x[1][4]  = 8'h2a;      x[2][4]  = 8'h91;     x[3][4]  = 8'hc9;
    x[0][5]  = 8'he1;      x[1][5]  = 8'hbe;      x[2][5]  = 8'hef;     x[3][5]  = 8'h08;
    x[0][6]  = 8'h3d;      x[1][6]  = 8'h04;      x[2][6]  = 8'h98;     x[3][6]  = 8'he8;
    x[0][7]  = 8'hb7;      x[1][7]  = 8'hc3;      x[2][7]  = 8'h7a;     x[3][7]  = 8'h95;
    x[0][8]  = 8'h16;      x[1][8]  = 8'haa;      x[2][8]  = 8'h33;     x[3][8]  = 8'h80;
    x[0][9]  = 8'hb6;      x[1][9]  = 8'h44;      x[2][9]  = 8'h54;     x[3][9]  = 8'hdf;
    x[0][10] = 8'h14;      x[1][10] = 8'h13;      x[2][10] = 8'h0b;     x[3][10] = 8'h94;
    x[0][11] = 8'hc2;      x[1][11] = 8'h26;      x[2][11] = 8'h43;     x[3][11] = 8'hfa;
    x[0][12] = 8'h28;      x[1][12] = 8'h49;      x[2][12] = 8'hed;     x[3][12] = 8'h75;
    x[0][13] = 8'hfb;      x[1][13] = 8'h86;      x[2][13] = 8'hcf;     x[3][13] = 8'h8f;
    x[0][14] = 8'h2c;      x[1][14] = 8'h06;      x[2][14] = 8'hac;     x[3][14] = 8'h3f;
    x[0][15] = 8'h05;      x[1][15] = 8'h99;      x[2][15] = 8'h62;     x[3][15] = 8'ha6;

    x[4][0]  = 8'h47;      x[5][0]  = 8'h68;      x[6][0]  = 8'h1e;     x[7][0]  = 8'hd4;
    x[4][1]  = 8'h07;      x[5][1]  = 8'h6b;      x[6][1]  = 8'h24;     x[7][1]  = 8'h00;
    x[4][2]  = 8'ha7;      x[5][2]  = 8'h81;      x[6][2]  = 8'h0e;     x[7][2]  = 8'h46;
    x[4][3]  = 8'hfc;      x[5][3]  = 8'hb2;      x[6][3]  = 8'h5e;     x[7][3]  = 8'h57;
    x[4][4]  = 8'hf3;      x[5][4]  = 8'h71;      x[6][4]  = 8'h63;     x[7][4]  = 8'h9f;
    x[4][5]  = 8'h73;      x[5][5]  = 8'h64;      x[6][5]  = 8'h58;     x[7][5]  = 8'hd3;
    x[4][6]  = 8'h17;      x[5][6]  = 8'hda;      x[6][6]  = 8'hd1;     x[7][6]  = 8'h27;
    x[4][7]  = 8'hba;      x[5][7]  = 8'h8b;      x[6][7]  = 8'ha2;     x[7][7]  = 8'h52;
    x[4][8]  = 8'h83;      x[5][8]  = 8'hf8;      x[6][8]  = 8'h25;     x[7][8]  = 8'h4c;
    x[4][9]  = 8'h59;      x[5][9]  = 8'heb;      x[6][9]  = 8'h22;     x[7][9]  = 8'h36;
    x[4][10] = 8'h3c;      x[5][10] = 8'h0f;      x[6][10] = 8'h7c;     x[7][10] = 8'h02;
    x[4][11] = 8'h19;      x[5][11] = 8'h4b;      x[6][11] = 8'h3b;     x[7][11] = 8'he7;
    x[4][12] = 8'he6;      x[5][12] = 8'h70;      x[6][12] = 8'h01;     x[7][12] = 8'ha0;
    x[4][13] = 8'h85;      x[5][13] = 8'h56;      x[6][13] = 8'h21;     x[7][13] = 8'hc4;
    x[4][14] = 8'h4f;      x[5][14] = 8'h9d;      x[6][14] = 8'h78;     x[7][14] = 8'hc8;
    x[4][15] = 8'ha8;      x[5][15] = 8'h35;      x[6][15] = 8'h87;     x[7][15] = 8'h9e;

    x[8][0]  = 8'hea;      x[9][0]  = 8'he0;      x[10][0]  = 8'h1d;     x[11][0]  = 8'hd5;
    x[8][1]  = 8'hbf;      x[9][1]  = 8'hae;      x[10][1]  = 8'hf6;     x[11][1]  = 8'hdb;
    x[8][2]  = 8'h8a;      x[9][2]  = 8'h5d;      x[10][2]  = 8'he2;     x[11][2]  = 8'h37;
    x[8][3]  = 8'hd2;      x[9][3]  = 8'ha4;      x[10][3]  = 8'h2e;     x[11][3]  = 8'h45;
    x[8][4]  = 8'h40;      x[9][4]  = 8'h9b;      x[10][4]  = 8'h82;     x[11][4]  = 8'hde;
    x[8][5]  = 8'hc7;      x[9][5]  = 8'h34;      x[10][5]  = 8'h66;     x[11][5]  = 8'hfd;
    x[8][6]  = 8'h38;      x[9][6]  = 8'h1a;      x[10][6]  = 8'hca;     x[11][6]  = 8'h8e;
    x[8][7]  = 8'hb5;      x[9][7]  = 8'h55;      x[10][7]  = 8'h60;     x[11][7]  = 8'h2f;
    x[8][8]  = 8'ha3;      x[9][8]  = 8'had;      x[10][8]  = 8'hc0;     x[11][8]  = 8'h03;
    x[8][9]  = 8'hf7;      x[9][9]  = 8'h93;      x[10][9]  = 8'h29;     x[11][9]  = 8'hff;
    x[8][10] = 8'hf2;      x[9][10] = 8'h32;      x[10][10] = 8'h23;     x[11][10] = 8'h6a;
    x[8][11] = 8'hce;      x[9][11] = 8'h30;      x[10][11] = 8'hab;     x[11][11] = 8'h72;
    x[8][12] = 8'hf9;      x[9][12] = 8'hf5;      x[10][12] = 8'h0d;     x[11][12] = 8'h6d;
    x[8][13] = 8'h61;      x[9][13] = 8'h8c;      x[10][13] = 8'h53;     x[11][13] = 8'h6c;
    x[8][14] = 8'h15;      x[9][14] = 8'hb1;      x[10][14] = 8'h4e;     x[11][14] = 8'h5b;
    x[8][15] = 8'ha1;      x[9][15] = 8'he3;      x[10][15] = 8'h6f;     x[11][15] = 8'h51;

    x[12][0]  = 8'h8d;      x[13][0]  = 8'h0a;     x[14][0]  = 8'h89;    x[15][0]  = 8'h18;
    x[12][1]  = 8'h1b;      x[13][1]  = 8'hc1;     x[14][1]  = 8'h69;    x[15][1]  = 8'hf0;
    x[12][2]  = 8'haf;      x[13][2]  = 8'h31;     x[14][2]  = 8'h97;    x[15][2]  = 8'h7d;
    x[12][3]  = 8'h92;      x[13][3]  = 8'h88;     x[14][3]  = 8'h4a;    x[15][3]  = 8'hec;
    x[12][4]  = 8'hbb;      x[13][4]  = 8'ha5;     x[14][4]  = 8'h0c;    x[15][4]  = 8'h3a;
    x[12][5]  = 8'hdd;      x[13][5]  = 8'hcd;     x[14][5]  = 8'h96;    x[15][5]  = 8'hdc;
    x[12][6]  = 8'hbc;      x[13][6]  = 8'h7b;     x[14][6]  = 8'h77;    x[15][6]  = 8'h4d;
    x[12][7]  = 8'h7f;      x[13][7]  = 8'hbd;     x[14][7]  = 8'h7e;    x[15][7]  = 8'h20;
    x[12][8]  = 8'h11;      x[13][8]  = 8'h2d;     x[14][8]  = 8'h65;    x[15][8]  = 8'h79;
    x[12][9]  = 8'hd9;      x[13][9]  = 8'h74;     x[14][9]  = 8'hb9;    x[15][9]  = 8'hee;
    x[12][10] = 8'h5c;      x[13][10] = 8'hd0;     x[14][10] = 8'hf1;    x[15][10] = 8'h5f;
    x[12][11] = 8'h41;      x[13][11] = 8'h12;     x[14][11] = 8'h09;    x[15][11] = 8'h3e;
    x[12][12] = 8'h1f;      x[13][12] = 8'hb8;     x[14][12] = 8'hc5;    x[15][12] = 8'hd7;
    x[12][13] = 8'h10;      x[13][13] = 8'he5;     x[14][13] = 8'h6e;    x[15][13] = 8'hcb;
    x[12][14] = 8'h5a;      x[13][14] = 8'hb4;     x[14][14] = 8'hc6;    x[15][14] = 8'h39;
    x[12][15] = 8'hd8;      x[13][15] = 8'hb0;     x[14][15] = 8'h84;    x[15][15] = 8'h48;

    return x[a[7:4]][a[3:0]];
endfunction


//function τ
function Bit#(32) tao(Bit#(32) x);
    let a = sbox(x[31:24]);
    let b = sbox(x[23:16]);
    let c = sbox(x[15:8]);
    let d = sbox(x[7:0]);
    return {a, b, c, d};
endfunction


//Trans T
function Bit#(32) transT(Bit#(32) x);
    let b = tao(x);
    //Function L
    let out = b ^ {b[29:0], b[31:30]} ^ {b[21:0], b[31:22]} ^ {b[13:0], b[31:14]} ^ {b[7:0], b[31:8]};
    return out;
endfunction


//Trans T'(key)
function Bit#(32) transTKey(Bit#(32) x);
    let b = tao(x);
    //Function L
    let out = b ^ {b[18:0], b[31:19]} ^ {b[8:0], b[31:9]};
    return out;
endfunction


//Key轮秘钥生成函数
function Vector#(32, Bit#(32)) rkiGet(Bit#(128) data);

    Vector#(32, Bit#(32)) ck = newVector;
    ck[0] = 32'h00070e15;     ck[8]  = 32'he0e7eef5;     ck[16] = 32'hc0c7ced5;     ck[24] = 32'ha0a7aeb5;
    ck[1] = 32'h1c232a31;     ck[9]  = 32'hfc030a11;     ck[17] = 32'hdce3eaf1;     ck[25] = 32'hbcc3cad1;
    ck[2] = 32'h383f464d;     ck[10] = 32'h181f262d;     ck[18] = 32'hf8ff060d;     ck[26] = 32'hd8dfe6ed;
    ck[3] = 32'h545b6269;     ck[11] = 32'h343b4249;     ck[19] = 32'h141b2229;     ck[27] = 32'hf4fb0209;
    ck[4] = 32'h70777e85;     ck[12] = 32'h50575e65;     ck[20] = 32'h30373e45;     ck[28] = 32'h10171e25;
    ck[5] = 32'h8c939aa1;     ck[13] = 32'h6c737a81;     ck[21] = 32'h4c535a61;     ck[29] = 32'h2c333a41;
    ck[6] = 32'ha8afb6bd;     ck[14] = 32'h888f969d;     ck[22] = 32'h686f767d;     ck[30] = 32'h484f565d;
    ck[7] = 32'hc4cbd2d9;     ck[15] = 32'ha4abb2b9;     ck[23] = 32'h848b9299;     ck[31] = 32'h646b7279;

    Bit#(32) fk[4];
    fk[0] = 32'ha3b1bac6;
    fk[1] = 32'h56aa3350;
    fk[2] = 32'h677d9197;
    fk[3] = 32'hb27022dc;


    Vector#(36, Bit#(32)) rk  = newVector;
    Vector#(32, Bit#(32)) out = newVector;    
    for(Integer i = 0; i < 36; i = i + 1) begin
        if(i < 4) begin
            rk[0] = data[127:96] ^ fk[0];
            rk[1] = data[95:64]  ^ fk[1];
            rk[2] = data[63:32]  ^ fk[2];
            rk[3] = data[31:0]   ^ fk[3];
        end
        else begin
            rk[i] = rk[i-4] ^ transTKey(rk[i-3] ^ rk[i-2] ^ rk[i-1] ^ ck[i-4]);
            out[i-4] = rk[i];
        end
    end

    return out;
endfunction
