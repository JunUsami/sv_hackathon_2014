module tb;

	import "DPI-C" context task  c_main();

	export "DPI-C" task read;
	
`include "parameter.v"

    // System Signals
    reg ACLK;
    reg ARESETN;

    // Slave Interface Write Address Ports
    reg   [C_S_AXI_ID_WIDTH-1 : 0]    S_AXI_AWID;
    reg   [C_S_AXI_ADDR_WIDTH-1 : 0]  S_AXI_AWADDR;
    reg   [8-1 : 0]                   S_AXI_AWLEN;
    reg   [3-1 : 0]                   S_AXI_AWSIZE;
    reg   [2-1 : 0]                   S_AXI_AWBURST;
    // input S_AXI_AWLOCK [2-1 : 0];
    reg   [1 : 0]                     S_AXI_AWLOCK;
    reg   [4-1 : 0]                   S_AXI_AWCACHE;
    reg   [3-1 : 0]                   S_AXI_AWPROT;
    reg   [4-1 : 0]                   S_AXI_AWQOS;
    reg   [C_S_AXI_AWUSER_WIDTH-1 :0] S_AXI_AWUSER;
    reg                               S_AXI_AWVALID;
    wire                              S_AXI_AWREADY;

    // Slave Interface Write Data Ports
    reg   [C_S_AXI_DATA_WIDTH-1 : 0]  S_AXI_WDATA;
    reg   [C_S_AXI_DATA_WIDTH/8-1 : 0]S_AXI_WSTRB;
    reg                               S_AXI_WLAST;
    reg   [C_S_AXI_WUSER_WIDTH-1 : 0] S_AXI_WUSER;
    reg                               S_AXI_WVALID;
    wire                              S_AXI_WREADY;

    // Slave Interface Write Response Ports
    wire  [C_S_AXI_ID_WIDTH-1 : 0]    S_AXI_BID;
    wire  [2-1 : 0]                   S_AXI_BRESP;
    wire  [C_S_AXI_BUSER_WIDTH-1 : 0] S_AXI_BUSER;
    wire                              S_AXI_BVALID;
    reg                               S_AXI_BREADY;

    // Slave Interface Read Address Ports
    reg   [C_S_AXI_ID_WIDTH-1 : 0]    S_AXI_ARID;
    reg   [C_S_AXI_ADDR_WIDTH-1 : 0]  S_AXI_ARADDR;
    reg   [8-1 : 0]                   S_AXI_ARLEN;
    reg   [3-1 : 0]                   S_AXI_ARSIZE;
    reg   [2-1 : 0]                   S_AXI_ARBURST;
    reg   [2-1 : 0]                   S_AXI_ARLOCK;
    reg   [4-1 : 0]                   S_AXI_ARCACHE;
    reg   [3-1 : 0]                   S_AXI_ARPROT;
    reg   [4-1 : 0]                   S_AXI_ARQOS;
    reg   [C_S_AXI_ARUSER_WIDTH-1 : 0]S_AXI_ARUSER;
    reg                               S_AXI_ARVALID;
    wire                              S_AXI_ARREADY;

    // Slave Interface Read Data Ports
    wire  [C_S_AXI_ID_WIDTH-1: 0] S_AXI_RID;
    wire  [C_S_AXI_DATA_WIDTH-1 : 0]  S_AXI_RDATA;
    wire  [2-1 : 0]               S_AXI_RRESP;
    wire                              S_AXI_RLAST;
    wire  [C_S_AXI_RUSER_WIDTH-1 : 0] S_AXI_RUSER;
    wire                              S_AXI_RVALID;
    reg                               S_AXI_RREADY;


axi_slave_bfm U1 (
	.ACLK(ACLK),
	.ARESETN(ARESETN),
	.S_AXI_AWID(S_AXI_AWID),
	.S_AXI_AWADDR(S_AXI_AWADDR),
	.S_AXI_AWLEN(S_AXI_AWLEN),
	.S_AXI_AWSIZE(S_AXI_AWSIZE),
	.S_AXI_AWBURST(S_AXI_AWBURST),
	.S_AXI_AWLOCK(S_AXI_AWLOCK),
	.S_AXI_AWCACHE(S_AXI_AWCACHE),
	.S_AXI_AWPROT(S_AXI_AWPROT),
	.S_AXI_AWQOS(S_AXI_AWQOS),
	.S_AXI_AWUSER(S_AXI_AWUSER),
	.S_AXI_AWVALID(S_AXI_AWVALID),
	.S_AXI_AWREADY(S_AXI_AWREADY),
	.S_AXI_WDATA(S_AXI_WDATA),
	.S_AXI_WSTRB(S_AXI_WSTRB),
	.S_AXI_WLAST(S_AXI_WLAST),
	.S_AXI_WUSER(S_AXI_WUSER),
	.S_AXI_WVALID(S_AXI_WVALID),
	.S_AXI_WREADY(S_AXI_WREADY),
	.S_AXI_BID(S_AXI_BID),
	.S_AXI_BRESP(S_AXI_BRESP),
	.S_AXI_BUSER(S_AXI_BUSER),
	.S_AXI_BVALID(S_AXI_BVALID),
	.S_AXI_BREADY(S_AXI_BREADY),
	.S_AXI_ARID(S_AXI_ARID),
	.S_AXI_ARADDR(S_AXI_ARADDR),
	.S_AXI_ARLEN(S_AXI_ARLEN),
	.S_AXI_ARSIZE(S_AXI_ARSIZE),
	.S_AXI_ARBURST(S_AXI_ARBURST),
	.S_AXI_ARLOCK(S_AXI_ARLOCK),
	.S_AXI_ARCACHE(S_AXI_ARCACHE),
	.S_AXI_ARPROT(S_AXI_ARPROT),
	.S_AXI_ARQOS(S_AXI_ARQOS),
	.S_AXI_ARUSER(S_AXI_ARUSER),
	.S_AXI_ARVALID(S_AXI_ARVALID),
	.S_AXI_ARREADY(S_AXI_ARREADY),
	.S_AXI_RID(S_AXI_RID),
	.S_AXI_RDATA(S_AXI_RDATA),
	.S_AXI_RRESP(S_AXI_RRESP),
	.S_AXI_RLAST(S_AXI_RLAST),
	.S_AXI_RUSER(S_AXI_RUSER),
	.S_AXI_RVALID(S_AXI_RVALID),
	.S_AXI_RREADY(S_AXI_RREADY)
);

`include "init.v"

    task read(
        input  int t_s_axi_arid,
        input  int t_s_axi_araddr,
        input  int t_s_axi_arlen,
        input  int t_s_axi_arsize,
        input  int t_s_axi_arburst,
        input  int t_s_axi_arlock,
        input  int t_s_axi_arcache,
        input  int t_s_axi_arprot,
        input  int t_s_axi_arqos,
        input  int t_s_axi_aruser,
        input  int t_s_axi_arvalid);
        
        begin

            S_AXI_ARID    = t_s_axi_arid;
            S_AXI_ARADDR  = t_s_axi_araddr;
            S_AXI_ARLEN   = t_s_axi_arlen;
            S_AXI_ARSIZE  = t_s_axi_arsize;
            S_AXI_ARBURST = t_s_axi_arburst;
            S_AXI_ARLOCK  = t_s_axi_arlock;
            S_AXI_ARCACHE = t_s_axi_arcache;
            S_AXI_ARPROT  = t_s_axi_arprot;
            S_AXI_ARQOS   = t_s_axi_arqos;
            S_AXI_ARUSER  = t_s_axi_aruser;
            S_AXI_ARVALID = t_s_axi_arvalid;
			S_AXI_RREADY  = 0;
            
            while(S_AXI_ARREADY === 1'b1) begin
            	@(posedge ACLK);
            end

            @ (posedge ACLK);
			S_AXI_RREADY  = 1;
            S_AXI_ARID    = 0;
            S_AXI_ARADDR  = 0;
            S_AXI_ARLEN   = 0;
            S_AXI_ARSIZE  = 0;
            S_AXI_ARBURST = 0;
            S_AXI_ARLOCK  = 0;
            S_AXI_ARCACHE = 0;
            S_AXI_ARPROT  = 0;
            S_AXI_ARQOS   = 0;
            S_AXI_ARUSER  = 0;
            S_AXI_ARVALID = 0;
		    
            while(S_AXI_RLAST !== 1'b1) begin
            	@ (posedge ACLK);
            end
            @ (posedge ACLK);
		
        end
		
	endtask

`include "init.v"

    initial begin
        ACLK = 0;
        forever begin
        #1 ACLK = ~ACLK;
       end
    end

	initial begin
        @(posedge ACLK);
        #10;
        ARESETN = 0;
        @(posedge ACLK);
        ARESETN = 1;
        repeat(10) @(posedge ACLK);
        c_main;
       $finish;
    end


endmodule

// vim: set ts=4 autoindent shiftwidth=4 expandtab number:
