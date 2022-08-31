// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Aug 24 21:13:07 2022
// Host        : DESKTOP-RJD0IDK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/USER/Documents/GitHub/Riset-RISCV-Ali/Multicycle_v1/Multicycle_v1.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "zynq" *) 
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
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52800)
`pragma protect data_block
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
y4zsHH13yUVugmuYIwo/oMOG
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
