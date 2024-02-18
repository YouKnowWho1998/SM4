/*
 * @Author       : 中北大学-聂怀昊
 * @Date         : 2023-12-02 16:18:26
 * @LastEditTime : 2023-12-13 09:23:15
 * @FilePath     : \MITc:\Users\ComradeNie\Desktop\IC\BSV\SM4_SM3\SM4\Tb.bsv
 * @Description  : 
 * 
 * Copyright (c) 2023 by 873040830@qq.com, All Rights Reserved. 
 */

 
import Function::*;
import Enc::*;


(* synthesize *)
module mkTb();
    ENC enc <- mkEnc;
    Bit#(128) a = 128'h0123456789abcdeffedcba9876543210;
    
    rule get;
        let res = rkiGet(a);
        let result = enc.outEnc(a);
        for(Integer i = 0; i < 32; i = i + 1) begin
            $display("rki[%d] = %x", i, res[i]);
        end
        $display("result = %x", result);
        $finish;
        // $display("res = %x", res);
        // $finish;
    endrule

endmodule












