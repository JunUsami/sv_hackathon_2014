initial begin

ACLK=0;
ARESETN=0;

// Slave Interface Write Address Ports
S_AXI_AWID=0;
S_AXI_AWADDR=0;
S_AXI_AWLEN=0;
S_AXI_AWSIZE=0;
S_AXI_AWBURST=0;
S_AXI_AWLOCK=0;
S_AXI_AWCACHE=0;
S_AXI_AWPROT=0;
S_AXI_AWQOS=0;
S_AXI_AWUSER=0;
S_AXI_AWVALID=0;

    // Slave Interface Write Data Ports
S_AXI_WDATA=0;
S_AXI_WSTRB=0;
S_AXI_WLAST=0;
S_AXI_WUSER=0;
S_AXI_WVALID=0;

    // Slave Interface Write Response Ports
S_AXI_BREADY=0;

    // Slave Interface Read Address Ports
S_AXI_ARID=0;
S_AXI_ARADDR=0;
S_AXI_ARLEN=0;
S_AXI_ARSIZE=0;
S_AXI_ARBURST=0;
S_AXI_ARLOCK=0;
S_AXI_ARCACHE=0;
S_AXI_ARPROT=0;
S_AXI_ARQOS=0;
S_AXI_ARUSER=0;
S_AXI_ARVALID=0;

// Slave Interface Read Data Ports
S_AXI_RREADY=0;

end
