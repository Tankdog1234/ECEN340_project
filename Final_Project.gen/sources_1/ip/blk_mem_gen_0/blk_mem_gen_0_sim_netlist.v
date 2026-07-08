// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2.1 (win64) Build 6403652 Thu Mar 19 19:48:24 GMT 2026
// Date        : Tue Jul  7 21:07:14 2026
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]douta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18080)
`pragma protect data_block
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
tV43lZEFwHZZ00Q=
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
