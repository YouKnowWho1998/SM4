/*
 * @Author       : 中北大学-聂怀昊
 * @Date         : 2023-11-04 14:18:01
 * @LastEditTime : 2024-02-09 17:34:28
 * @FilePath     : \MITc:\Users\ComradeNie\Desktop\IC\BSV\SM4\Enc.bsv
 * @Description  : 
 * 
 * Copyright (c) 2023 by 873040830@qq.com, All Rights Reserved. 
 */

import Function::*;
import Vector::*;

interface ENC;//加密模块接口
    method Bit#(128) outEnc(Bit#(128) data);
endinterface
 

//===================================================== Enc_module =====================================================================

//加密模块
(* synthesize *)
module mkEnc(ENC);
    method Bit#(128) outEnc(Bit#(128) data);
        Vector#(36, Bit#(32))  x = newVector;//密文向量组
        x[0] = data[127:96] ;
        x[1] = data[95:64]  ;
        x[2] = data[63:32]  ;
        x[3] = data[31:0]   ;
        
        let rki = rkiGet(data);//轮函数向量组

        for(Integer i=0; i<32; i=i+1) begin
            x[i+4] = x[i] ^ transT(x[i+1] ^ x[i+2] ^ x[i+3] ^ rki[i]);
        end
        return {x[35], x[34], x[33], x[32]}; 
    endmethod
endmodule
//======================================================================================================================================





















