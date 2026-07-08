// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Tue Jul  7 23:04:01 2026
// Host        : MyNewComputer running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/User/Documents/GitHub/ECEN340_project/Final_Project.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3548 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YdZPuaE7i9wWBjMDPDzAac1+DcCyHO7EglHQ4wrwYwzqXjKAIID+blPW2IWH5bQpQHEUjValo8E7
CnXWxPMkv8UKirT393ZfTBRIXT2wUblZZjMTfdc2nZy9jLO/bqB65Kw6cjQCwa87mKU+hMe02vRE
brgK78iRKKsG5B8NJ30=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k3qVbJPdgL61y8h/yCDeNfqz35OZEY6KD9jN7hjGfvNPbTfSfmkuYdASGCi7PxBR8iNzADU+SkJl
Qo0EafquZcvNYceRNdPv3PCxUS2tkRgvZPwOD2PaCwFDOs1OX5sZXd0PByRrPfqZLdrH+TyHz26R
6hvJ+qAmUPWYcoyFBnXRW1YiNjXJljFBFtDEepcYoZ+07dUrKQivZ3+p+LeaGa36lstLskCzoW8k
TikRqg8HuqoE0Sr9WhvseP9BJ28vIXSt4JW32eR0UVCQpNdj/ijl4SpecpLyPhMYkKlOd4J8MH60
SiTDg9sJx2hJ+szLaXtmmHYpZGiiqLsn2HmS1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tSP4e8QxCInaZJVDZzqHSXDCTwgA8dRNw+cOjtszqf848jXXIvsddITLBKgh3/es7Jsx2D6j3ADX
SNVqFBXNIRhQtiWneDB+cEAbnhHkQYADDmSXbUyzfIa7fMCRN4BnnJJsmOuF3MO1IViERsA8Gyls
2gNg+GeCAPp19IAAVNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iqpRnkSG4UskoAWj1hYkO5Lgd6fPeeqbB3hN0V/dASLdpxhmVkNjuA8HzfPvrCKQPX3dYOtkJ9TU
cwc2DJr++HbQAISi1CSqJ9zLANyrEpGKC89h9jNp924t1jcNVIjc+BHgXwE6QjtWF/OLgkacgZnD
yu+NmxaD7cn20Eo0eW0yFg0ON0B6lfhrdzS4fkvQGHXh5XW58FVapc6MEv/3HGvCFPTkBrLp0fGf
4QnCnF4NxLr/w6I+imqFMCEIgV5jBTCTZq1qNoh+3l/w7rf8Bu29Pjlcf20OASkyoj3OUMZ5xu2j
a4yYJSB4Ocv6sD71poWiQ+Tg1D7TiqFasl1pAA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ezPLKFB9DAQIjJXY6BnKr2AHNadZHjjTs1HwkewNm6/kc+e3esRxzhN0OiMAO0PvPTmzB9eKS9KB
DL13M2K499ru2tH0NDRj/qYhftOdoINbIQGSl19HT7bIhUfThDNIhdR1hOsXKFysmHfQiAp/VJSo
d2eR4bv3tofFAPIn80KjqqyF/hZgsodTihRUKH7i/sMWw7aCHddffFCbf5f6rEBvFJrradP/Wehu
gv9oKYAnwKsiqfZAuNz3Q5QxEjOvQKrd9eiXb9+eZI78dzRvg4fetclDeIilhLv5odW3szVbJMbB
zXf5o2dZNh34Ua1th5/u553kj9jI4IY9hzdUJQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B7XeEXZNrGdDJJUsFqUiV+Bg6ryF9zdeOpmXtaGZF7SIskxu2ixLCSjL85LfA/gawbdfJIJTi5JF
s9WPHyOgSogD6W2ejyMu3YWzIYWChnnJBJ4PO5dQh8A/XLomXhsfBmA9LGMFwaRSgamwSKdfh1nC
cY3a3jYwp5KUqbK+tQqUSgJ1spTWSchCxkmeunrX6MXVjZMGWpX3ZssDWdJH1AtesjQONFIVB6jz
bkYjGfC0+uZ3XTGWkxq6iPa2k/H7Mi8nCEM5BcIKgmfZacT2EMlsgTHwkp9c3w5kPMPhvL5V8bav
gbNdlBu6EZBVZwY3FIol3KtmO432u89bSb9CEA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SSWxPD+82HwXqlz74fVCWG8yXPkMyYuLAGpFljTu/BglDEODkZRRMnuYv1sDUT0t2+bHqeZ4eres
R+YH+TlrL8cmwSre/BCW56O6T5gDhkzKvRRMndtNhNIkq4kX8jr1FSci8DVz8ZnaQ5c3KAHI4uby
MOU/me0KAiDQjwfHbJiyrXAUsMeEx4j3oR9Q4xhra48VT2IzrgmXstCFV1lBpWcY55Osph+85xDg
n2YWNGZLBTvN0NmTn0YFO7b6BQBgm6uQrbRx8vIq0xGEL7U+/qhY4WnVwmSBq3XsIAnAoWMbU25I
bj9o/5YoVjjQG+I0nLFA9Mj0/GZGVV/iv5R1cw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
RQPaE8wEjl6DrWTYEWnKJyeMkf8EacaTufRgNY74m/PGGmWDr0R3aGWZXPiGVV9WKkyQ/7eykeAL
caavOgbY0gy10mJQK6MhOOUnInU55zle/Exc1vdvHfslUBMGo8TakjBzpMb2rTb5mhHLfog2IrVt
cUNiNgcWGgLm47fTI50ZvLu3STNi1/MKrXQoQ+9LMOEc27nffUOzT0DQ1lSt8zo8hzryg2SxloxF
0YuVamN3S6syKa7JsH/RoFznmKobFhS16xr2uVlXSCueZeBl4uReKeykK76/j4ZJZFd6cWlzWRq7
uZyG0wnPLcmT2bSBqBheE4IwrPxGotSCUixVa1HsOQGFdSigTnh567+n52W5V8KJXSDWgV6nJSjt
QnG85m9DrwWBjSNWX9MIqCXdefhA6W3FSspJoc/HGi0gFygUiOT+6NN5eF0ISfadS1Sr3nmc4s5P
vlBSl7QW0Vukem3hRhUtTTYtLySx5TNlqEylLsEkbzcQ/lZp+Blt10Bd

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S1dit1Yv4wRxEu+6T2izFgzXg/QZFB2saHNmy6T3e2fXNiFrLtL7UjQWUoCt8sZwYPztCGsJwDDG
eOdPPTKasYCoUnFuCdIYgvRe5RRQtWdPFLnA1jRNqi3XlNKDfeGiefPKPXpqTKSY0/LKZZZFW7qK
rLFOcs1PvS6+glHEL0Vsc74Ii8KI1XIWyWLMfW4guWkZ8RXNmVcoMoDz9HrxICoPn78T7OaeK9ku
zDrRbHbQ2GxZO9w507Wbk8a+f2C64uaGJQJ5+RXqrudXd69kv+4MFqf4heeol6hJLF4CBjnYyWoL
h6CvbtV68HO1F9ZVZsfsd194mNODshK98nXryg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fjSsuNSwYdc/Snzmg/BbkkGVyLynMny0aqi+PsZ9tg5s8UxUNQsBYAXA4k3U+NvjIZv1KJJx5h3C
eQWFNdvkqFuQaNxKerP4lE4MyrjFrUNjN7WLAciTEU27Kl9K+84J4DHx2VnowZVRyM7C9/eKM/lG
e5hqObwopmbuAZ3DHcwVMj3N87a+n1ZsxVCoXw6n/J4hGzuRId6RBGPzdpMrhZc7Vbgvu+J4BnGk
LKYur+kXZ6mb9ftl7x9qchv9RrYBMnfJuWbZ+GY7KvrLyKgeZX45p68NUD45Mxtv06jR1ZHHO58U
rQgVo0LpfDX3jpt3dmOpxbsKENxZ+UzAshAG6w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WrZyA3pVcsyIeqhaNRXfh3KFvRWWQv5fjbYD4k8tnrBzBtSMb91BNUAljjXtlPtwEk5amUm5syvD
wcRmK1Zod+A3T1I4c91fRLS3oHXxj7MSj4mljahaqldCWXB7JTYrBYUjzF9xSi8YBWyXxC2swrjP
TQNWVXSCnvVQ6CCN8elC2OjpTw2YGx0T0W6zcHeYeosOZDRh+gMmWNr4cwiz8z1x29w871ihhBJA
WKYSsCSokXugCJZ9LVVU+695UXadde4z4tO7lkLABuoPM75ILjO+wGXhcLjKijVqkv19ZGTDY0Zk
GZOw8KgdFThMKRlmWfysuPwY2tn6w0hu6tQBvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18368)
`pragma protect data_block
HOTE2wwY8RtFSNGFwguC1zV+Id67Yu1TdOV9cFOd90yOyKmNGpkJ5EeX9mmWegOF0UaPysRrzeOt
04RpR3u4CU1i+MsKP9gzYLC0yA66xV3+uqma2WipIwr0O/36kOc56ghgJI1H2gkr3qkSBVrF1sXV
JZ7CyifT+waYwg476899EFzSwS6KyhHhIf+P3I/BIxlcnfE40g/zN4WqodvoopGrc9Gz/YpzDJH7
+GEd0/He2lrvHCF+J5ic3hIfzlnWaA0pGUOZPeiVcISlDC/NxC3/bhryBLwXwL2h9r1sr6WxPQNj
osoml9NAxvFz/dTsjA6AehU3P944dQkII4BJiS+qhcugHmb3PMcKpK/Ef3oFhHm/Jk7rSA/2WLoO
02gxA4hd6GV02V5+bqRR9mGQUwfzGywsvGaEKaCr5gntb54kdqxiLaty6YYN46BLu/wTm1xZakvh
g56gShU+bKV9ElLCrtbbsPYULNlmQ5bnW44qNF4ePpLaoZMV6Szqgr7ouhU1A+KIsWejJ5OLta+4
53F0rQ86yk0tVfrvtR6Yu+lV8/aXZw2geCG4su/dfQ0mX+hU8quH7QANXv9V7ilKSMZnQNV4xBmI
o4H30YiYumdWkfyM3NZST5gAtx3Sv792iQRXH7fenB5zIIwR9uF51JeHg4isXGYNgzZUwwf+Jz35
5iCe2rkT1KaTSlskB5mpjFCrG4IL5FjgrdrJ5B+0vqruwQuoCrhN7ltO8x0uE5gZlw+0y/rqVNCv
Ime6Hyx7mMPvTwTfb0Gunq93qSK8bdraSlNMit+Q2YjNxz8SudCwqOcBcS7sTGTQ8UpZ9D01adQ4
NCKleCXBPpUOiB7BUFqdaUL/YrxFCxxxk19rPk1nw6wTxUMub0L1dnYSZUFnFMtJSIqXONT+dDK7
joWuU0M+fISD/4Fu4ix+IJoGRfj20jfXGwiZx8WxyD61msuPFXlHu5DE9PRrtcEy4pB1C2bf8aL6
RxrBxmDASzQtS4g0Ezah33+TDVbMRA2OntUpsy8GLao7LyTob+UUKmruMzhu4rtkgGIPy5RgtDEH
ce8hteCAcICYzrFhVRojUID1vh3Ceh8souXlIPo1xJYVNXhYPnPvmBWiN79cdQ60GzsPi16ZxS+2
PVwGTFGMnJoqw6zNftlSWNHHhupEGg7mfqyIoir+P6bws8v9bcTJuBGykftOuVY4IuBrKeVx/hfT
mEmLkenhhqby27YmPveIjGyV035KU1lJ11SjJuzzZBJjYp5RpSgCEf3GOvB1Y+c34LeB0NgiIWW8
HiaJzdZywP1mIZP2MvTotSM1IGWTOBvTe9e3bT3STewz1QL1NfojqSsKTeQPxjyuBjGN0yFMwe5e
MuWWZnz3PQsLMdCJdW35L2ogFfjpSv8Yisd+6KdJYRBSjcCOOAtSJpjmc9J/rujll60vvrtfTscl
FsWa+0vufZjs475LfEl7Hlpq/jh5GdCZUEKsqOLXKHN2+bxK4hQ4AQDzJMqe4kGQKMh/Kb6uHlVO
jKSc0d8oP5Jeru1hlPc/Nbf/BYueBeti3o1k6mOyI4+XgIYzwmsFHJKIRzT4FwfJNcuLM1ukThWk
KcCbVHxe5SIL7d4bcGM8BCbAKSpc/w1fbyKIew3lQVvIrYlYDrane5cEkbTngObEMLlC6UNLMTR3
Cn6HUJ1eZpyr1/Igkxt5vdKLI0kLIYjZ0gvfhLyWGYfN7KyxPjUP6OvRQe/IszD8Ud3+tWLOh3/6
jEmudNw5rQkOjZcLBB4EANAcoZyJ/IJW+qJWZ27pRQ187EG+GjujL8VNEn0pVVel2Ef45cCYp0p4
1tSxikQxW787z6YVzMtH2W1pepHFch2lNGkGL5HSV+/ZoW/VYdzbSrWJvigNrfxHA3KlvId8Xxlv
MgmfEiYMI5OMG2nTU2AhTZfm10zSSNELRk0w7dldWXxUAm20E9DkHKE2Voucf+FCHZGzpDF0fLTn
9WLw3S5ILbrX30K7/+7WZ6SLnngOXUQCGP8q+x8ajcizLhLJ2tM2FQjRKsy6i5bAgWNtPavlWSk9
0njuSmHjTpiDCULHJjs8nJ5UnQ9bFAnAEzwfqoQV3Bl3Yak3UMAXRFdeX2wGhl/IZW4pXluQEUUr
/iIzpxRzLhzyMg4RqUzmclFQTRLTn7U5J5KZOx8jNHmeRSny/t17TfWfdJlRQ2k4J0TfaGhUKCgm
CVr7HpB0WDIT8DMpi7zZLCFw0aE74Q/2CSabxjUPJ0GlcHm/jTP37nu6J915/HHR8W5FcIQ76MSE
IW0YMJuCluiHLy2FHNg1tCFb1nsSI7N+xVP7TYDUhesZfRfJoxJ37OzriijRlRZgTKRCScyG7BB7
Vg3Qbz5xseAqRMrDnBv4XlGZUbBFyPHc+S9AOTi4Uv98rSqOsiqQP72slmAAELa4H/6ZA/C+vgGx
jzPnkewVipXLJ8LsM3JDc4DD2yORRRwO+upUb4p7/kPeOyOG4NY5AQaovT9+3uabTWPI8Rr2UJx+
wD9rkosZpKNZJrKksKA2+Q3+ceuGfoJ1I7KiKEqUtVP4ZLkGDkE1jdysBQcaDL+nFLHZBQ3crhso
33jTssmjT4PssYwopqwjBs+BYtMl56iN4tHfz/5cNvEnOFh6Sv8zzlgveUMb+7CiSf/J9K6uh1mH
DeyKqXilZC5w1feuSYWWZg8mehuCQi8TFoZPpX0vx4ob/Knhu37virACOkbaRLVFGWNyaGSDpVkt
8AtQsLXfgkjoyTk8oqgmJBQOSNDesQIrF23OLaeG8jKCuv17w0Nl8PIheapsqqux1cSjSU4Ljv6M
UQbaVbHEwHCVW8qs9YY8qmASK1JebJn99tjmDW0tpGYltGjTBQjnZRnEUbO0RGP1wOu8WWGUSjVh
S5e+dO5iodbCzRQUN7B+JlV+Zb/8+CM1fpzRhRFCFZbsXeHzIUMatTgedvHPd3xGWJotpwPfkfF+
P6flx5jKmjHNdh77A3+QsA9WnAawxxnllG05b34MgjudH4oQQTJLXpKkzwMn7dkiw7uwatI8f2Hp
PNaiVm6oWF1UC22GBbBu5/BavtK54t8boboe2KF7yh0w2fAnpgzHdQY31Ttrjs4UUfIjWXUpanye
QIkjDegN0eSsrs7dNMJ3spGKVhROu8ifYPFJORN+/1as+NOM7EAHMl2tWQDxjX9VnyGojEmtrr7l
GiFibE15jH3oWAAOSQspWhZl9yR865ASUir00CqtPt86EhqGOFJ+RY8PNUQXVLblyUPw6kLYa2JR
6cVnj2Y9D3Lpi+Z0bE2O1BqKKJFx0p+bel3/ee2PkE2ejNPRbLOZE86IeU+mJuMC+unkQNVinHWM
K+zsoYn+JFU9HFKtx1cCQ7NqKoJJXzrR1EcYtbvgL8D7sLguYu/JQIM4yjNh3F6rXU3DEF660Gb6
GL3nVwartKqeWUMeDP9JXbgOYlw3hTG6gEE6nRNqfCre55D+4sVk7Nc4UgLXCAZ0BJDHsewKCJjq
Qgx+Ipztfrcuf9nN6luOKhJ9+hqMPYc8uZBFa9rHvjzsytkXNvOx5r9WpV91AkuaEu2s5A3ttZqm
GQVFNIaVGrtG6UCMno/+sFPRbhQTOzLF7v928n2mry7c/N/9SW6ftlSgYervZKDqw8NQ2dJceSD3
jx1jrqqGyWQZv45HRECGlHVLm5Ig75bcLDtDmZIHBvUcR5VUhjWT0RyzUVm/qD6Ku601VKChsMLb
9AMQnkSxIXTToSNCsxle+SvyDUBIZ5wIYicraCMOCguhjZQzzr0whIgb40TFtn/RdN7sCWxyWs2e
CjE52d6Ypfyhp+g/4k01w9l5dFWx97HBFDQULAM17SwQ1lj+b0V0iYl4H19nmdKJViZ30aDqd1Fc
9uMvL8RHM6x1H+j5QrosvP6ROMmlxZEiE2qzE4qXBm45bafT9EGXhMYAfvHWjOtuBvfYmkwMQ4Zi
ZdaNIi1/ZT/BW55ThdM6oQBhFas4OQttvBd/BJXZ5ybwbCrKXNJoarY1H1T9CgzxtzS6kKr7JIoE
sgXyPAEBPYqa+3z001dKtFAEEuGkPcXEEUqr7JC6qWD272Il8yj8ymK0mKYy4v4lt8PTHhyByHxP
jAw7XGH2uiVDZguAcZIwoYlcm9+1g2BsQzjgNAh0oJ8h6BazDHhHCzb87nq2pmffnJZ2wIopZLkw
Vse3JzbjdU3ZKa5TH7J9dk5/p3iIMRznhpdwcVEPzV5vgRtoPNbn60W1OG5Kqqf3ux+tz2TuxMSs
C6+TGtBJChNWxxWNvE2wuiKsnjhydc//trpXH9R0tqD5yCMpabsy0hxLKwdRjxwqkXNWvfPC9/Cx
KLCQn2UVrhlMCXm0+V3SJUG9X4zEP9Ie22q5/HnP7kvyCCYN5eTGL0dq+oxkCp3x3/o2nFoKouO1
mljeGinlj/XP0YsYGDQve3/r87xOK4RN33D6qehPIEHTKCTBf9qfDcTPlF/RsZKF4MWwi/nIKIQc
1PtoL+Wq1mhhtHiJ11RbiRa7RXKTT49I5W7Utd0STzImZyRL208pZ1TXiXwQle5MtaGR5wkbXmyW
0C5r0q+x4uy1/AEdUNOifnDbxKpdSrRvx9N9hFlZnVSOr5XmuBbMnQTs3IeTME+DRx9zEmsOCqw8
nHp7fliMJZleuW1Hu51PcJz2O7yauOX9pzISimjii7x6ZY22uzpXpgwk9OlMGNhvA+QhGe2a/HuK
vXyT9QrxjHUyI7OFXqlkqF0sAOT2zYWnFsqxJHeQFFhx47L6mXPJM60S033XwlmvXPbspMSaRo0z
n8PMX3orRkn3OoSk1SbfC7yl8dgRBSEBd/jpVzsfPTK7KUf0KSUgINOucG7/WSeTL4LZCr6wYmVx
z0QySFjhweaXmoipCMggrJtpHZsR6M/RuPtPX6noBrXJP2y6fFw45rCunzgTQAC7KJViBmhMhpUu
S6YiXjOw+cAYWs7qZsZ2dr2R0HEt9InTR4PDv6G4bR2UrK/gaeRLjEy37yNUl/4v9zddubY1vdLl
llPkfznxOQibFyU3O0PxVrKFDL2L7b4neyiqwwzSR2DNuHPFjBHpoA2iQd6KCafP6jH3mLHSrRlM
dTdiDckYHt99Q0vnpI9fUXVaVZTAq9MGOTkCKWlSB0azMGrSVUmh0FNcXHug0l7tC/6UpUUG9dkz
EyxnLS5W37lTBzigllkUZKRTK9LOERshvBHi/hWkpmNyL/a3nNysbMYNZPAOEJXWZlOe+ZItqSR7
BmSmnvKfLFSUtar4z8MZV9RN55PpgxgXFSV4+d56Up69FgCpSdFPBYS5faCBZEjJfAsRUJy14slL
AhhoGCj82xL9ODL/nyhSkns2s7rrCC7S/LOh4dUMXI1EhB37uCK8SfHt8Cq3Y8HFfgdtw/xSOJLh
jkDSzRdJ5gpnoSLziMEoL8ogTpTsROrEXvNbjceU9Eqh2AaGitSQLk8l7FM/1aVPpEEK97g/ncvu
r3a9qxbTIPZYMrW1nOyGficbzSJd/te5uKgPkN1Z0uBoG5C6WUa7JNA3U+QoPfJWS2MNOvpOOBcI
ssIUFOLcEZLzYzmwlFbcO+rwKVOe9zs6R0GxedLxw05snvdUsonl80OYTdlLDoqxjA3Em2cXGPKF
wp5cEXzwNw37q1KdnNXRag++xHs3J0WCbFwNvTGNsOcKxFrqinOgVmxoRdGoVH+GIjOWSYI7y6wR
/tYfSI+7HZcN6c8ny4IKpJr+bhZ6W1Nr68vV1luU2eoiRBK3Ru5kE/JJrF5P8zQro0eAd5b73Uhj
QrBikD0ZZrhSmNaX4Wlj8OhQdhJ6doph6Tb6lceh1NPArQJKgBJbGqzSxXUQi9TZ4QB1fCA29fLD
5cjLMRJOXP4Fc13Zu4T/x4bGWe1rLgFxbz5w0FYBRrppkET0vKM3oyl8YzkUYud8Mpne6niKEfN6
VxnnQRZ+p1I6mzuVRYv6YrQa+THHF8gFhTj3Rm90Al/KOUJevn/OcufuloOJKWm7Z5zsKIj7e5DG
6NCZIu3mc6kDZjuRKc9/gDE8udmob8U3KByi3QJpKC/DDCq4Z8Z0o/R80J6cw4P0CYKxV4J8NrdZ
GxraS9qvImyY9zhrWad1OeJVSygxVuivUhUA3Hr8IMVRx3WTrjflRHX+iGZSrhkzLjurK615j0gX
KTobUUPynHuav2Q6sCFGvgYiRHSEWeu8QEd+Hj0jgr5rwRncdhcY8vVOEgEFlzywqzgJ3gnyfkIY
1YqW58D7kVKabYSvJSZY37h+e/9zeMISlYhcmRQiGz0JKj7CIU6m/l2hKXtFlRHUKsqHRW3t3L/D
0L1YB9NsaH+GHm4+67WhLNhaEIB2epvK9BEGP74S/5SfecICRMvI6MD5X8egpmbPMn3OBdncLa3F
5pZ1+1uKvHHk8k/jXgzLdcyM0alp+dBtctaocxILbN2zDQrd4MFkW0Rs6GMImctxZunxEBDqpoQw
y4HxZiqQlApevXV1ej1Q+YLj4bmGBwp5DRLSOOmr/+IN4YSgWF0N13Y+j2rrJohs6SH9VlbG4OTs
nuLfGYh8GC2I4P6nfHD2wByC5tmSVSFDgvGZwFzfIqHTn9EyGwlH0E2Li1YOjJnOfgwNxz9+dfMf
Z2VQJtqDmP/djMwGO9W3NhM2lpixLQWgO8NA5GWW3O9m1Xrmfcdpqg/nbQsYK0Mayo3yB8wwjAQR
iP6YEKQZDlR3N0ROroWmsapl+qsb1dieATIsgUOAbVazLinbUGxslH+lhiM9broOhrA58EYeIzQQ
5+7rarlf1mtlcXDYCzYp+iTDAb4il2FwYcApZnGslF+YKeV3S5Kc73pQ7wEGI6GWTksbz2US0CVj
yXNawVKkdbZGOxs82J6QNUhOY6upXejF3mXiPoWtNudbxRrr1O7EKUV13TkCAKu3nahcUFZg3VBm
UfMBDbhHx/wOpA4lt+fE0Flw/aGUEYbGaOyWYycWQjD89YFwwbPwDC5Xk0woF/Rx2ZPxqYxC0Xe1
2Y+iMYXguSbMrQzjr2ow1Qrt3lywXCegm/xQA6+3hR9k/zLorOMTEGDLGLSUFp/pqtzUWKDLYxE/
3Gn4yhk2IAYLYTTpcWTEQubGn4klj0HnH/i7Q/Gs3IGTjb7HMi4K9vU7UoYRb3jm3uqIvYdtEgDY
GEZ9/PXjXd9p2MAHqt+6AXFb6wZjqf/eSyNE3qoTOgV+dmKGv1V+jI7MC36Z1vUkWaDdvDhaGYzX
KMdNsgHQdeuueezNMgg7rvqd3fUkF/X0PjEl+OBm0bAGbqb1N0ycU4lEWTc9iiOENQM129OPm1h5
CaakAO2yClEtF4f74z8fdTxWv0848H4Zgh4R6ccuqHrRQjfzhYGifAoppLecyVGLE8Wd4vXrDCYs
EAF2j2yIiSw4MeGxOuAnSpcn54NM3qb+p+qUm+vfex2V7HnnPWl2jSVkqfqupOE1FzudNBueGlhd
1Sv66E+CYPkaRxOHFdIyPYfeGNPvsQp9ZRSMM3Gzy2p5FAd4ouyZM07/XtEtTEUskPBp+M1AUGZa
B1o5yyNW70OW8gvEHOzvtBZJWn/gnKMFmz2DQUauWwHeuUZBmQd7aq5EJaXHXE6cOrFhxV56inYl
183ru1dj/93GJkCOq6l/j1YTblna1rghaxp1F347CjI60HpzEArB8iilVUMlVx+4kQal8d776P/l
WvkLPj5YiHobJp3W0nFUinSmN5aVVbctKB5boI1o+kJV/ewEdZTySiBht0wPzeFFwWfRYWCWJxd1
riJgYL0QYCAznfwp+XZpS4D6X+6n7Lc7fHzhoWJu06GgReLdpCxHHoTyRKV2dSstCKESnEVffjI3
NiYNn5znvWPTxvZlSUJarlgOdfb3Az23frm3JrNaP+Lyg6P6eyqsdYiw4jfQhkQ5Y0n5Gg0tdUoQ
HP8PvBiFnSn4MsVlAI+DAi//Z/vGGLEUNQWCiBCXFOE6o5cEJKFsVm0lkpz1GzgZeIVLUrcB4tWr
bGXGz9YnEVtOqRLXjz8deMLXY4vsF1wIycq24hl5LeBth8Frw2vLQ/qGpUP2cTxQSp9v9ZtQOPP6
yhv7e30mCyn7pGnUxH561uMqkxSSSALd7FnBAo1qMKKy+gpX+003iFKjWWWelMKAZ5tj1nrEtCrZ
OumQEBizYFAxmFuOqDbg7Xb0hZJXokN7YezczrG3jb548m9GkjUlzWza76COAYOmD1w7C/pgNzCw
SeIJF8jHdwGVcBtONutyEKDUkSrRmaZbII8MoqiMce2/lp1+8V3BPRGSXm+pbDnLG40OS4fzEBFX
FUAnELP1Y3vlJfgzzAUPiKgLKoMeuokXHSoKcEz5f1Hk1mYyqsKCCttrlI6LJ9V1gvi8yD62Q2GV
GclsTc6GEeSVMj1TCWHkaiGCPwZUXWJVyO0nw/rWdrFH5+VizO05j6h+NbhdFIyA9IUMekj/OMF+
Y8VfXkz9FQ8yo2q52mfCs8jXwHA6MrVNcEFJW9QjpgQpenSALIBXeYtyBoE62k950/O66M8kXjgh
+9r0z+0/dqCBhjYc7dhZtX6t/1ojUE9LGVGPPU/dDmmSysqBsPgtrSKiL21MQA+JQQsDMeQ8XDjj
MFRintgfCHhGo9/F3bF1m8Gz8EsBsHKaHfXN/DHBETaytb2BfFiOy/t4ZSeC7ImsVKo48qi0kgHP
BXcnNda/6flwcR5Mk+0W0BHsaLup7lAw6fp3VEBZ3i57tiXYd3ADkgUdCz/ah1Y7wHI2ONs/oTUJ
tNgJXSyUYNNEu6h02/ezeYcfKRRTCMRwLqKF64JCCFu6rK9dAdcS0Ead05+MOZxPS68iWquKuFuh
VR/mRZGtaxIzDsWyEoJg1auOafUjcXcPodg3wJbo0rZCBs3Prjtflyq5uRweXonZNBUi0CwlmCNP
Cko8/DU1rjp4XWVTL4INsGLpJZ7BpTPyTCSTPFZcVf7Jdq6AlKknHVULBKQeLu04skng+pBRoZyi
g0XDnsDirj91QkX9+vdmMlmX1fiQlTGNFAjoFVqzfjfq/fytfhGxnJ2Nvuf/gf/bSEIZC5nSnO9O
5m1TcCzJgVOoGAWB+Ak6p3vChnnMauKwwcRy7ijLjC6PCw4cQgPgfUM9vNjVpj3CEd7O5mG/znxH
Er/jias+2FTVPJqUQHr9u625x1bju6+xddJtW61uPYOtYlVsUf/0/IqfOc10kFFqZbLAXpkNxuxM
rZgy4OD4hq1GN6euds6CL6fzWS6BQx31As/MVBGoB05F3n+eXwPeTaLuo5E0n7gqszCi5AtrjPHQ
olJ5VB0EbkYJ/KuvcVkEIBMRttmD4Vh8a8lId64nLd7H5aoB49HuD3JS5HJGjmOl/KAsEkr3HRB+
6b7fQTUxkC9Jd7zXIvMIYTur2aBTjc55m0CKRbW5zWQZdIiINRfaAK0tL1NauaYWbYRs52MwLOQg
KtUdUEcnXhlT/ytlrwHOIGg6dvzMAYMe2wWXEpeVpz/PdkN8F99lJmp31m4IkRG9IK9tfdfYLXXz
u8s0cQfT/4XYqgKHTrFphWkG4lyy28FxPqIqk1Qr+2tOX5IlSj3o3ytPhYyP6Q878fkjPk8rFapY
l172JZdXTOtozu+lEw4F4kW0fBKKJvaTjcyk6lo4lcJJunuh3+INeVZAa9ETxZEmp48Zlrl3Q+RJ
YO+VD9aMsGOjBghoBIkT8BZlNaMBDY2tg2iBj/pnZatS7I98i1V/qGSJMTTMfB/1WGN4Lf2sjRmp
LXFVRQ0gmoQ4CfmUahFNPgTOs+JX2C1JMob1RQKHrbetfbDixSklnrxMrndmUaOxrBfZc3sKqFyG
Wrs+wIGUWiYHMfq1y2F7tJl/BZHBDeRWMsUU1AzU4sKdBKFB2LhzhaGz/2282n5s/415pPT3dcPP
TU+V4PbB0HyBB8mqrwksYrnnE5OSJqOwKPqEOkRLHdTnK8HWV/cFK1C1dkdT+qGnN+0zEbQvgn0Z
aFALSpdkjZNIpgNN669Igdm4Lch6Ww1zC9p7DlHkZefnbpkQEq6SKkiHb4GWj23T03KzW38POXlv
lffvAK2N584WCUJY2k722JCIdZCMhmXcXMmIB40OHuOodfEmULqZ3znAWvduCcb3drAIRYU9jjWR
Xn+7wCNg6KMU1NlkA7pvriq6k2KkdJ840jD+3Q63MpmCmaw+8lg4J50+CwuK3gMHIsB8PpiZb6gj
20e71hyfA+HeBIziKzBMobjUl1xohI2Updn25g5QGFkHv0jhI3fijOAPnHFhM3WvwBdbv7gTWxIh
gHjOjDf7NaEoTXxG/qEqzSsMy4d3MOlnX42NSloNIqs7ywUXU0gIPFgMzeyKxT8SWu+3Ybp7bpno
SiAs/gxzrgYMFxv/BPi10a4iu7yDvw8x6BZnOyf8WZEXFefcSWcN2g5bXxlkP1RnlP1C4RpQH79m
kNa+Cg8gudg5bBfafY+/LQW8djOGe8fUfrELSmOE307KZgr8Hi3vwCGkVYjVYDcsVCmpQ/rr17SU
n7FMm6bxLrsoi957kg/Q79ahQPbz/MWWb6TaSGRLbacHMDuByFFDXOiAukwzFrGVa1k7lPwk74E7
5kMPtWQvLZEji8diUm1IfOZ2LMbhWksqunOIroglmyGXFqQFrjaxnGMgFhtlyknKCN+ipqipJFLU
lkjpEFul0DUEYdM/FfSP/O31sLH0WGiITUAGDGaWp7J3JiWiSu4x//wLKZg9MISI2nQwq8goO8eU
Vfhy/+LLVgIqHY6H+un18/bOFd6JT/tWqRXeo/bzVPVorA8xLhjk6jbGorSd2aETO088mRta2Plc
Ml3mxrG2AVkBSK2pmBVAja/Vwieo6IBYhe5sdklwwq1liYfUjGVNO2+Rmjh9TCu/A7a7DJwu9RF3
VDdeJV+RQ5AqavQd5wK/wxmYJT01Bh5lzmCDIQBsUXzJ072LdFu2TdbIZckDSKbdIDMhXVvLwrP/
nhBovfR+kDFYE5JCrYfVAplGsfjlG/HavW/seE67JLOCbssRNHgdfB/U0rsJaO95gHv0znF85VAA
axkB9V6Z234FMxZ/vTp24Rqw2ciI+H6ILFaeDa8PKteoFv4mNx2/kzsPdej7PZOXFTP1V3/NDtjl
hzKZ0xw6nAgAuduxTzp3LJofL4pl7/KKaRPqN4FDkdn6z19kGAL3IXfpioJc9F5OhS4M8yv/iCCu
2VcFromcnNCeqHRBLuVzNuzU6G6gvptBgnjkSybYmoHc7i02xStr7LXGtZh735pHr/cmDgvMiXh3
qhk8lvmLugVmOQCwsGGO7h9YTUdYXAJP06DGVozODoKRZJ2YHQmKYPHWmS5FT/Hx6+sEuQE2rhIf
0s7OcKaJWvD/eepeHROF4gVc59ng4Al7NXoBD42bQG6iUdjsjHybH+QpwOCWyTfEeAxhe/ULlR06
/CvshotL90sBhfOwlV2bNnAIwzlzZR0L5o4MjO0STaHSe7AoLFKyF6o+Z7qGLEoRydMDQ1jm5lRf
lsU/vtrKyk5WSMCN9giTqe8zQPI4HoGRGwx0K3u/yoL2m2cCHclWN+LA2lwsWUfSPtcBo0lMsrDc
TyXqbdAe57Sdr9sXpmrqocm2ySNwVCS1njzGlqgSzm80jL+9LWtJck0oUcznIKbeRY8kMpDgSzSg
B1EYS2W08N+4HFLvvZAz5XiKXyIX0wlX7PvsUso0KQRBleyVXjf6yA7i5mfgYpN5kMK2dfPI/VQ6
LoKbXbzh8cJMzohO3/ud7gz161Sxqnd8wOWc5cYgDEjZZogfQKIaO7XcOccZXVStDH8wAFBKwo88
mQJqPKgtB0Sw0Fwci+77BYOkcHRjpixPmz319LG+Wg1zg93KZwXP0Rnv8mN/BSOI/pXpQwnlQJ3o
pHe3qYIjh3mccJMAKIgNwzXCSG9H572jj+JThBWIVLdA71oVRha9NPwBY1Sj3zUFYi9Zb/RpXNmw
JISHckqROGH6uC+BzbU6hcxDVpHQiU1cMQEYUgs/g7O6ICuoWiifymQ9Lf1SnGkJ6VtQshACJ4IE
qJISwN7QWVX1JvemIfw2mvDJ4VkPOXGemEXfrNxqltTfgOY8JdM9yF7c9N+9vOArH3I4p4mzw6ci
ON8Qu51U1e2N3tdeBvWm7xVczCclWyiY0qjdjxBvChgl+N0qTrqKgbAG9+k9KUeHBdSHkc7ggi3e
AXaoB20zt1wMYJ92npmy7JNQr+dzWd4+2dLbAZVdDLTJ45drfzZLOIinguOx1eHtaMjveUZzx/2a
4JBYEjiXZUWicYVTsLm6RiHBPMes2w8qOPsTu5udwm9ev4Q7MWGcdd6e6wm0HsUYs67RKTGF5div
U5YTlUO3fn4urrZCTmYT5g+nzOG1PD7gAELEtzCA9+QcMvz29AfM2u1LiNVtayOd2VlmQ+vTzbwD
MWJGzXpl48QHQlxcRn+cBvzK9o+J5Wsj0XrY6YbK0mwRDvUtYMzGbE44BB/3vakCHAk1slkKD8PW
OmfOHf/bk5Th9yZWam3k2OdQub/Yz5NjNHIJIkmoLPFQOXHHYWMzzkYm8RUAOuW+ozDbAfFUIysL
FrUXaki/ViJXquFjGl0ujjA3go81siCR1/RMM5lqPHCkaAUhRGi4MJlo1Jn9Jxy8eotGEj7a4pPw
xhwU1vZN8oTOQCcsY25ZwSbIsCnSSDv/G0Q4CuacPEZuiFh+p8NAPqxGZ9BF8/6yjAl4fe33kiAx
vr655suGLnlWpgRWRin66iZyLfxwZSlYPbSM4pVXxEUbnA5x6YR4vb3wDVRTr/alfP1vozHhNneh
B9Xowpt3aDLlLGRicGBY0cTxIL97ZWhvZtb2JNL1/RXTjecc5VWPMHFhs2+ZgBnooOqIQbJzQzNX
cs3po7aXIFHB+jG/uZua0sQohD+RgipDZ9RKQAY7FRVqENzdFNSXGaRRowEY+H/bhGlgdyVzZGSm
bhnHXNH85tJDM+Ng6bOLIDaKe1bFSxq6moqX4Iuvx/iISHizRXa35YmbxzZQlqlLXMlZQIH1zb2Z
VboBubk7rEmT+psVVwnbxkPHeQ+MMbis1cNLkt5zR9HWiO7L23mlsbCPhUySm6lTxCGyN6MmsG90
4FYeLTbQrGyv131Iz8zU7S8UuDtigs1xsIKf6o4xrUp7OajD7A8/qZ6konDrVUEezoJqvb7uSdfn
31tsCIza7YF7noK3AdpyCQxWQvbYaahpDSSPoObZQsrXPhbYLpAufhmFWxLpoHjn86TD1stBVsqz
a8/YJ2IZREbSUO90n8QuyosTIyjk31hpVf9ZSLOwo5RS8cIybgb3KTKxIx8xnhEkD31PePd6BnfP
yJeC3jq+es2yJCTRVRWofkhJMKugzWQ/7mmPpk6++sgMxMRIKZ5I7J2+iwLZyaJ2DdQ5fkwUJWR7
2D6IaAnK+AneX+QwjT6JvNU65iSe0aTZ1+0MsaVJFME9iPqYA+KMIavGCpXhVAOQWIZvB7Ag45/H
nj6AbFfbOZSluMkV+S5ypuFc13frYaUqblVLK8/RgieU4FysH/7geAu81IELEzA9TpDu8u6g1ypD
L27zv08Fpa78NJk7AMtQeDLxXDKQGPa9muFhfqSTiQL2yb/5pegR+nt2cGWB7zTGEzz+NcxVvrOZ
/3KbyXk4aaCOvgiffDEsCBh4i4EzmZSX3U0a9x5mbMyZ01EJCBxIgrRK65r8iQs8TzUy8J+ECDTO
qKWnHqJZQe6Ak6KZJ+HiR28l4ul/Pv35wqlxvnk2TPKKajuNkMkE2UNzOsJ4kaDeHmwwDZPvCPyj
4OMxca9lt+6Nu2ag2wEDuufRUMr78S5nKKEMNQaIwCUrbvQj668BlpdXXJWyIM8fjfSu2ghHq4hd
F4VmUVtpkNcRLfMEeOkAEnBACq///sHCKd47b1hKNbfT2cVlv24qlo0xxwrIjRgOhBZCl+mPt4rf
EgUwYkCm95UgG1VP79UpbZoC1Pnjo5hPKTniBE9wCCY/IqaqcXv+T65R0QNUGMXpzxpkTBNF19A+
y2cF7WUowwrkYZy6H9TXNyo3nJhNab45SRhUlriSTte0H8s2qXL4r3yypZC2xIyjxDAVJ9KTubV+
k5XOmYEoYuqyI4kD0k7OWZdCniBMqKpmmOHXR0dkmHrN1/CZps3kJLGKReuqkjOPkjtxAdRv7Ci6
/oNmVb5WQNMW9YtrT7VKPM1oM5tMtS3hAHaVDMYl9HMfgHNJz2FCYPK1VrIh9B4ja0MKM6TVqnai
d6Q4yJmaENsq0cYK/5VAOu68++4Idn5DMDVN3OncYh0pDwKDE/OnszyAlqEK+DNDaP7CTx/Nl1/R
KY706dvTwpWSGyQJfukNwoGaR9eNJ4vjDa753rUwnWejuTRxGBFZNg7mqciKdMbeGCwkPhOw+RB9
SLc5tNL4ISzCuMpq7Rddapv9RGyvvlNn/bHZkRJScBwHW3iTaC5AjrFe9lrehUsbYTI8enVkNa/c
REiY1ZiWlx1fSndU9btvqfJv0s1F66rYarjIXiDCJ9oQAhpn+Mzm4x+CY0LhKEAnmy+OHc7eo1yx
1AUNJE50ldNzNBEDyzCi87a1G7hnbb+yf8wOr4zdLxLuq2bQzK1ogHZ/NlEzp5/nTUOZW0peoIKA
k3rrN6LobeXwhLHUD+3QRVt1/MPZmWz32N2koQZIotFKsaGoz7rviL62XKFimyiY3JAUDg+dY5aV
cz2oygnYy4queJyeTd3g235wgm8mMY0gbgvs7RpLSCYZ9hX97DEaYoWfcPN9VQrZs7UQRmfMunKP
ewI4Td1fPDRjJAKOmzJdpK9C1tY4UHSHZ7VEToLOfjYytzQ2YwqOi8FDjDp2HfrQu9Jj1EQyR3H4
1dL03ZxPsl+nhrmI4hdrAARGButXY5uF8v9lCBujnj4DnzGG08ZHUAoQjdw1go0O/TQE7aMcXLcg
Sg0wEISwrl4L7aJprMx2J5nBKo831S+g7kPUfy2TZzGQ8iJNY5ad+SmtNAQAsJCY5VfRk1V9Fo2z
KMGrLXGZ4/JwTreuaJ4gPkRmrgbNHeFKRJHzvGfY5V+hkMn+2M2XXpiRN+xZjb/3yAno+VJXnxxJ
PHmTiUa8MnUAWmlQn3SXgpb8Ate++qekHUgyvv7LvixE+MdXGStDAzD+YmVdtKSHbxr39NofW5Hm
GcuM3dVxkTuAHS/xIoUE0C0U+L3SMmFqOYAWuN19mL5mD2ecZ7styPhxCQgJ1huJoWazU4eMidbB
o5HUUNo5UW+I8cyvOiYSIKatnmErF+rOlLFJnIBi/5FNTru/JBeMrKmTlA/qdDFH5wypIE5258vx
uLIeMaQcYBuCvoGcrZVEw5FH4sB5CzWwECEnznsopZAPVPF9s8QelFGoZ+JLMs5ES6ncJh5wjctf
Hd/v+fViX3nUgtm8YPyUUojpa58hmAfBZquAWw/KO/ooP2zyd86+02Dd+w0OLbz/m/d8EaoZmdCU
p9suK2UaU0RkXIWKyWE+3gd/BImNkgWvnWolhHdyE/GQqYivR9eYIFQ9d6sjJY+FPrC/4K6Hex8h
zzGib5rJdBiF/mRUekTYmCz75RZp71sGSRDhL4NCcTiug4LhMNz7d8Md5OFeaCyPeJQZ47Q/dxG2
A/ALv5nogBrcIs3wGsH//7MH91ZFZ/Nfvge2OqZvovPAVDOByJIP5h92x3qhVdPtoutoD55LqrO1
7N8CUtFreHXHRlzaLHP2Yt01nN+fQiNuGpN8MZRtv8seHimeCrKDmVNayGlfKjMHGwC0dRItQR/n
dG15+vi4pIkldKPqlGcJ40M7oYbaLvnk5F6Ej5aq7W/GCP0vA1BpaOBDTNw09+e9XkUytLUPGJov
7YVzOhELtFKpIbx5fH70sFlXe3L1zcrleS7ZK/4P3EEm68aBuMSH04/teDvw1fFOrteQLNQCXiNE
YYghsLZPZxIA/aqpekNj1nDgkkQw6gsZtf/z2PTGI7932SUATWVjODTVLx1ZntPZchMVROJUZu9S
OeS3U3JGSis0SlHhuflrC4N/mYrZQtBVTzvdtVrXrK+CIfuJrjd/aYuEvHZE/iHzCokrX2r2aEkf
KEL83xOuNAjn4qOB/gw3/RZoeKqyDbWKSqdLQrCXsQqXrFdF4EiftRDl5MSiDMroNs2xxeXUGOq5
kGpjSK4HrUnr7nMEXqgWrmcdDqcx4s4epNb1WYfEX/eu89Kb86suj8LQoxjFTBMqYl8hLfRY+FLX
TFZh5CArKtKaR2kSvaa+eNjd9jQiibAx+yXGEFfzR2FynSr5Sf/Y6XFw36coKrj/UNfe0i8Zh4cX
mFrdN93UhZAzTlW9GqlvsrXDOTZq/Ct5nxMnrtVSw8T+QqZgSbEj/v14+2N29f9cnrCQGiGYlRB5
lBDMA2SSvHxhAIKK1FpfBrY3UZSt7xCxu1inUmXxhUhaWCzfkRWF40SLyGN/BfWe2F+lM5th3t3V
RvMKnpHsV5F2E7dlRw5ObRABT48pDfircQIqyudpVOuKrHPFVuTTCmDk5ldnwHRFPn0iTemWB4b4
Um+kfJc9wrTqbv6xbkVaROcAv6tUgo+DH2xVIqHpEI6PanJeRNUlktO9nfkJeEktkryF+/fMEWVT
3Aa29rwnlQYQ8VKH4Y55jcdrGM03QSMi3z7AOzAWuH/301L+tOduvz5/l9CrQrBLzUdxkaXgiVeW
klxMTmDZnk6ZqUY1FpvwmxPZggWu4QCYNeIbpYtrn+jhaLQTmM2Fh4aXaiHyJZKWt8bE0MxeKx0D
B/VRJ8hng4XgAZJqFA/n3W0G1wAHnZaoMayL/qGAm9ViVudhBmNJ3yqt2hnJC9mzuwpe9ARxkPCf
92cBsB5WpLrxkZl0k4sTWZiN2F6x1yXF1qjXeB9m8ZVCUhJEReAlVfrT9V+fQe4s+pcBeMHSxZB/
2V2+5qdIIIShBxu8YdcdC+3b7qXhOP1m0+w77Yk7iJV0Pa3nPAGpikAdEjyLgEW54Z0rL3cYdNGX
71X9K8/39ao8wdPqLt8uuWrx9fjJp6ghrt6zOzcGypC3CNgeGCYbzAIZRZMQ+nq8/nPq2wgsmmMn
AR9i6W8sRThgCqm+TfMmHsF5LPXs0G5Np6M/RGKCDXxEEHTgaCsMBpjFkJCY2D+QT9gLxT/uxowB
cLKh6grgnU8hw84R4uvfeNSe/UeS+oz/WRzkRRTKhe+pS4sDZJIxIB+Ly1WOEppgIRzDAfK94e7n
qnGBzsEuhTqdwyD7ZoaS21hd0E/Sue6+P6hxZZ3fehUQPonqVItO5v1mWTf8lTJlqwsgYbjS4Arf
6+Gk3nDJ5Mg8ERbzOISIHAHvdWsz8MJQ41jv7xqWTUY7PKhQyAPm0irHsaxMehvOu8+jdQoZ3lYM
lQhoSajlAztJWtMFlC9Lbr7eniC8k+OnJfRZj7smFnXvhsngYc2BsBd2jg15UHruQvixCQB0Wr+n
4mmK530pTIW7yOuyCZCY9tDUpTotXtF4c/3078c/YSkyVx1Csyw/AOSSpfoR36GG9exV2d1xhbGh
caw0kOmyN+e+n0cJ2tr+a9fOh25ixTQrtdDvGumrmPBssR5boTBVSuuoYHyACCW5Kmts7cayUn87
hd4Zt10q5o6pJxTRxgJDaWslur1yxO1ectsOjs3CVGmvX+YyoZX8hdI5ogm62hQwkUkNNSjG/d/c
/yxjnaIOxQKgD0L/jlTQfLzySI/Qe7s0qiHv7xGeN/fIdoLzdylde3S19vCxWfLKVV377TNvNu7p
ozO3oOD3AiMWTNQTlPF0znIj5UHw5YVDdQW/DnmlkN8GTGX+baXzVF5TXjIHnXPEW3Su7kkaYcyw
xgtU4jBSkV+e+OhBKpTfwoRmnNI/0NsliDQ/ZTyoYsjTU+TVmpCaoM9kjGJ+nUtU2f7v8rU6T8UV
Eo/BEb7Q5UfhlNrTQP64whXL9YA/VWETXHxqYdY+I3G5A8hQyLF7s92eGaTfOX3wPBiTrtBg0Pfz
oyC1Eq1bGAfi1uEVZmLehq9K6GmiSMHujriwb0N8+IsT3dnzvonTl+VHzyxa46ZDZ3FvxETypbgY
F8XogPiufvkWwS2/jb8YF6ne/V8AfCxMKeFgwU+5A+Ndzf8TYTkuDAY3Jygo514+U0D4nYJg/cR8
8pgC6Nw9DDcxM9lUrEURszt2laPvLigDMp2MkfhZJTM5HR3x/SfocQk5y+EKhygsrQ5QqdLZB3nE
s/ZmMbzmL39+sQe7NsauGA2d+Y8Sl21D5AR1hhDehkqnbVDHXyExYa3gwRdFBAUMejfR58dvQwVI
hsYwvsJGQeIPdtDBWnh36NiZzG7oFNnuyD/7Nys5EqKdTz0TdcVtC2oQsBKvOCAeBtm4mNzotOOH
0e3zLm/1yWHXZU215VE2ffjOcslws8nA6ijrscsJrmkeZ+S22gKnv4RTgoiWcm1oWLOPMJKoBZpd
bggcBIPIGKzofY/Tcxbsmrwi2IrJnYmkIKumOKKO5Gez0MA02p/zIdu+9CEwRc9F6l5ZJW/wnhQt
7dTPiw+jJeS48c3dcrksW46aZTcHhePw5HIm54lujJIMlfLR/Hm7V9Wcs2FrIdiJUXF0gzy0FLX0
WJATLWYjBRbMKxqNaTDwvtGHI/e8QfP2iMYd8gzrWleNPOEhudOK33rdqjyNyLgBcFT7kkCjPPUX
nK3Iihd6IU0OKU9Bz81Fcz4oBZKttpIfz+ulfir+qb5ga163iWQZttcgepynZs8506/s4LpDMAEK
OjCuUwlTvxYZHo20R5DGLDNdmuO/71qcg8qzBNxnUXw29wfw/jerHtfVTWY5DXr+9ChFGJgUAxw1
GuK+K7DnOMH4+Fsv/u2t2BAyR520nmHXgrqX5xtIotLW8qAc6gHZ9e7mmP9v/OsyVVV+BOBcyrWB
5Ea67Vub/GFXlGfxA+Euq9PlhvjeFp8Cq0J1tjMjL+U6CaBN9+E7diIwJKyFVwiqrzTmVj2Ryaah
n/+B/W8u5wRoVkSUE0aXsHHfQi2J13Ye10o8fMfxoNAshqHSwwLNqNq5xfD9K5tM9bGO0dMzD45N
Ku6uTUiTga8tWWEdOYtyZ/LUrOYfwsPoNw0yeHxC8ZX+uL5VD/J5D5Skk7PECWvAX+uS4KOWSQfI
hNnz/e3DU9Tm0QZlpO+/ARXIg3O/Q6+QT5ECGf1HE5QORCy0fKy3RBOoB2D+M1lC8jvz1bJFKc00
O9BLiDLzON/ygx5//7gNGiDLBvY5u8h0wTnlWq76JkD5FqDBZjxjHWjYRiqLKVnGHUdzYfpnsu4e
wgWR/Gnfn2PWTI9DgD4GGo3T9Xij4FQwaWb8pN2ZN+UbMbHVMgi96jpjxi61aLkkPj7SBHsS/vkC
qvvTY2lSoYBd8adruXLrcjZTLZ1dhbihAOz+sRAXPCsFc+nCiHZSiMbrkco7Xlb0EHrK1i/PdBD5
amCIr2ryDBWCpJjp4qETs6BWcmE2+wDG9IprRYzJInKJ+KnYkgi1MZz6hk0OPYOYvUFKQLGmkzwX
zgLdIN3qqCPGF55c1pGQ0D32Rv6FMLNVwe6IAfZXalWfP4xUjamtnqBIONBkATFoe7og1UjfLFsx
DmUfAGFNBGHkNx8ab43kBZuKkXf4aZOGw3WMXELci6F1XVLoQlxMo6LcME5C7OWMg4xhdk/KDPnv
raz88lUf03X2H1S2a3B2i/MFXfXVz94cbh/2G8x5f1XQ9BDfaaOw+gI3mL7bhQZEfAyTIYZi3vhu
lhK/6yYoOtjnuftou3FBDMHQ7qT9bA6gv375Av4owTOZAl5kkCQfbJyV038mDylYW7bSVfXJ4Urk
jFtI1a2/UU9+rXYbCYpc0JtBgygpsuhDKkWNKBJ678+lS0xSjHLXRgC962JDkJ+fmVQc2ufmSFD6
/7koK4Cdt9cNzhFFaCeE3nGx3kOce7Bl5fAHVV/h9VkJxq3PBIX9d0I142wHo2oOLWe2Ded72Bnd
OuKC+Aut10fz6Gx1VNw7jLUsU3dllyf85HdkMWe+z3p8TebnX1btzCU3VOM4xLIdoc7CCW43xJkm
iSulldy5SOgHc9vPol5aSRc3AzRE535UM61f0jK/AnnmpuYkxDFfwcsN1dagBvEeoFCpqTCzDwEg
hcWYDJYe0Egw8dcgvwItOGANf9ExqJqQ2NT56dg45rJqGn3s7YujxPPOvCG/AWp4Vj/ZnIQVnVDP
mFkvgXwwiEOwHY51dejjxM10nGzIVbCPn27+TJLN0kvLXvBzvm6Bf6QcI8N9LtTj0qDPo+2CB3pn
REK35cRYl9jmYnSBc7th/oD67lpiHORPTGlFNcuc9bkR/S7IsyEI/wFsWxSLlTQd05bvWhai/KS1
qRGYS+VMu5ga5qeAxMbToEVZQ2OVklBQ77rYdNxYC/hWJoiQJORkbXWAC6CAk+lfUknFtAANrbap
Jt9bkHwkisZWUDujEJqQKdIEBOG2reIsjapv8udyv3jba4BPRrgZ49XupN/m6sx/00klcoRfiWMw
gpFAWg3S3aYdyzdTLGxvAHdvb2ivgeOUnxiVd7D6/XEts0kjmUKCpqvVNskN0Y73B4dJ2Y+CzVJu
p5nzf+NtgIDkNuf8Z3bOZab164xvG+exgrXPaoLvsRidXxSKk09d+0o6dm53Kl31u20niZMhk3Ay
dXztOYIoK2cX5OQl3OC1z0g3t1DjY9NH1aTrI6kYW7lcsIScpro+SmNHu/nHwgjivACVKNcq8WGO
useP3O9F4yVymDkssYJ7UcRXyG+0Xs5BVUDhEIemuNfqf0TEMFesXRnEmEveDRuszRi2cAHW8aM3
JfEm1CoU39O6iGSdMZFWDpVm7yVHCuyxZvVIIFw/GD88tLjdPE/YB/hcxNZ7ha8qjPq+a0Pc0N/P
ZMXlAllfe1lsCqadL6JRNB/tlEUQ61i919ieA9qTc7Wd7/aEpJbjHexx8vvHps/XCW2U1rpmRG5P
u0rET2zL8FecW9fkqntjU4R6raJgEidn/Zaada97kzZUJ8BwfOMsz4ThH4zRjPs9+kqr1ukfsMaN
RtwNdA8EyYIhG7ebU0YA7gjMh7yE9Yf4sxJa6+Jell6XEfPTjxhRfFPaXk2KX/oxv0F983fQ3Sfa
Aw1Q4mhTLjzF4aKEAYGcyi3BXIzWvNl4ykLE/qJ+1+d/TjeNYyClGhjJ495trXw6/41OsHC45ci1
dYK0zLBQ96zh22NLxp1Ky+RV0CNlX1QxqbkJgJuVsp+oo/bKR1oVD/W+ysUBYVqaLIIV+7WqpsGF
dcyFhFitu91jApZ2eiLqyxuK8XTPN1o9v/FfEnigXdRISz7uLXKb2lXcr7K1oYj18H++ssxCghnd
bpkxf5c9MlypjOzPLWNuv18W+b/jlyiexzWGOlqN5ByvLNfOnAJiOCKKVxWgYBc1Vu9etoH9zFT4
19U9tqJa2jBO/8rOlQSi5k2ofYbOmmE3z4i8QsGlK7crXb+YAyPVZC5hmRWkB7n9mMZS7yA8V6UZ
rRgBe/F1XXPooxEXYpupwv7S48angrWzQtaHwbXV4vtlbKq+3Qy4IzWZ3WeFgLIopf7f3nVWsl+8
U89S/JpA+DQU+fkpEiEmMPdeXQw7BCnF7E6MlirWJxLlVYuERMbTNhXgnaY8epj0qHRyEs2PQ47z
2M6X0DABxz0EobDrCDc+1GG4k+6GlHOnLhnZ6za0A3rG98Eew4GQaiUbUsr2kT4M+2ZfY9RG+8rA
xb/V3a3ohXgN5b3D8cQUE2fsWUh++lXac0ngPuHJwYxB/6PrshxD7xBEEGEVyWP615hewdP73TG9
l5u/ZrcFv3HNumppkKIAX0isruaBkRlHveWXAEMeorEheFecurBda5uQRlp9fwOA8sjvoUThPzWQ
gC3Vj6XQzZQIQOEzlP8Iem4BOFHzehAyvg73Ytx+XPm2a/y7yQ7uT+Q0xKphFz7qDdPoXdFpKURe
ynchOuea8AbdkaA3Mf7S6Z4AqJtB8jXHFWXg5gum54lI1zS81jwL64KPeSqNcVI6/QU46IZBeSRy
tpY0MPnR7QNllcJeeh+x6cdDQPaxO0ob1FlphuHp5Rn6vx8VoJSQpie8UYjzAJFkUBpTIh+reJVt
qPyHHHxVwftcezEM56yEh5G5BcRPSlYyZbSKOmcVMWx8nxUda8UPu9Ufiuh3XjVZxtKJjG1E70jd
h9Q7+Qkpv2eIH5puT+of1na8JXk2VKI+ceYsQ8+XCRneViCDJxGVzz9RFF20AB9bY7N1LktJdFzR
1a4Z3JfVsMO92VPQpSQZ1+otoA+oA6kx8Gu5LsG+Hpy3x0IpVHz43NafVhwho7FkG2wjrw065fUo
t9IqZGN8hg4c2rdgMrfrhPVK+GQYhR51zEsGeAIdrgbBlwMxywsSLPO84AD9gDU0zlgPEMTPTU0y
0XpozTxLLMhJmbZYyvZtjPQwMcgPP+M4iafcMq/Xuan42IKq5FKbEp3k4voiPHFVcXE18STDqq1H
Qd25EIBF7yPuX09mT62afXRJsqnlQXte7j9H5JXlM1OYzLcfozfSaQBdWG/mmWzbtD/v5qYdh2gP
2dX5LCe34HcsSYd40DuR+S10t0IjClYIKICZCRhel0R8M0dgju6DPhD0++3PYRqjU8102WCHMv5E
fC4+vb/15HA6TuqcbSVozleCIJccIQepiad1LujMjOddQaCXrT1I1MzpmYkYXOzwXP1ZQaknrRiP
Kq+KM5ncClZHZlYQCP6wHPalPuBU0N9N8n8IiKDw+7wp7rV/MHGP8u9uULw9AR8U2xgkJPhVt7ro
NMWmil4lD/+m66OBttzFGVT3vEw0lbUsZu/7qxVUK6DOC0fmb/nN2hWstbEshIsOrDQ38E1Sza1x
d3lZNJxXtHACP16c6kR2Cbd/Pw7v0mc8QexDekHUN5sk2cI/mIK4pIR2I7jIsUqhMYcxdepRdRbZ
m1mJ7XNy632ZU3vbHNwkuuUCAIoBe5F9t6Lnx8ZyoVRtwhNf2A9NjSFNiTB9f9C9Lyar57EFSAcf
LhDrrxQeseSjgLLbff2N2jqFOePCS2YWVXQjNraEpeF0v5m7mYXdxVsrhYRHytpqu2gT61rLQSZF
vsyh6XR/wkt7gL4NTTNh81jXMGr1pnQ/sJrdzF40/wXegSuZ9R1BvKxQRgJ2WLQziSaeltQJ+yIN
6+tG92OvX3eII8juNuBeorvrkGRvK/QHyk4GnGeaNaNGN+MIbFbWdr7qlIuMZKQDeuDigfUO0pUH
A4jDMj2olqR1UqdZcfKemdcB/42wDkcC+Pe2HNxzy+4jGpIvXgDnpWC1BS3A6Clpp8qmZSTUOwVl
XHns1W+C4/6lXtrUOlsoN6V+ONAZqmT+PjxQvNc8fg7abGb4Fepufuts57Yk+9mfZC5w5hQhnQK3
oMFPrUvl3/+JMe/Ur1aEbpYP5iYvsg3P+AWQMVO1B8YXSGsW547s2xe12kJ5LQIuPWxsqX/pGovI
vqOSpMcn21o+0IB4U99z1eRD4sYms6qeiTn6ZmfGB1zjJEyC8O6xPIdSkHpdkNTER8vUFXfGlEXv
henBkNJmevPTPRzD+asx2V0EayrIlvabttIBPSi+eo/zHx+aCADj/FHBzRNVQl9XcnZ9q+6t4apk
abNWWvU8ATt99pSm0aEk0rYYZjvlRPa2SCPhdahRYQr2GGuEhlpQKwSgVlqTT4WNGT9HfN5aC+zp
BwkL8xjPdhKm3LDayF0/T1kQ2kb9G0LmJeWe3IEhMst7IsQlyiaXDmrWA5ZxgLl64JwcgAqNezYm
LhMyvPpmfhRZSV0b7AJ9kBJqk1p3vn8ZqkvvqqQJ5XggAcIPqfFtLfPOZWJXbCPB1FypKbISVe8f
yXZtavXYLTj8szqul4plFgA9liDaM5UvhpI/vid5aifJ/gisDjnCGjdBVu2t3XyMtlJzRff66wcC
uMdVqsC2YyYNUGDL2gDi7hZV65vpLh3+0r8BCcJhnQPGmLNF/FdBcu2JHH6ha8Hln0pMI5k0OsHH
FXQ4cDYcS8PTRcmy75XDQbgMbBoVV+O4sDYX82bMBpdYDwuST1rspgtLXPE4VuU7pJHz1t+vcs9X
g7Ofh3bVEZKTGmDwuE+5OANd5FPIyWKsRB5I0lJ45wcsckANdTS7IQiBn7Q0i6fdPMZzC3KF9yH/
nFe4OxU9yWQa9cNDsqJ+1nUtYdjd7pJaFOOkpSMnDGsCLs0TekqoPj6t5zuWwStPZJfrjpJR33O1
G0F3YtToZsJMIvkKJHAOps8TQQuj2KvHEvWohUNOrXZSgL1DnN4sbQo5GGYniqu2yt8cMFcAEA0j
0LUrR/piOM/OJy1W0gBpMmczSR9vJMbYqfuuaTCl/vuNKkIHMU5yx+AUQWZekZdLH8BCeOg1c/W/
bf9P8tkDaXlzVF9LJTlQa0D9K3KoNxvQB3nvuy93M8Yv0ySpT9ajK4HNZ7XKvMuDeTwWo4/vI2+W
YuAoM/AHHAVk/J2vZI4UwCVXG7L4vFM/S2cTM7e3l9CzAhtpoS9djsATR1PFlbDl41NdAOC9PKPe
X5K5N0X+VOsxm3PINoc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
