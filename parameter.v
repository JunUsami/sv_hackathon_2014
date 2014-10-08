    parameter integer C_S_AXI_ID_WIDTH       = 1;
    parameter integer C_S_AXI_ADDR_WIDTH     = 32;
    parameter integer C_S_AXI_DATA_WIDTH     = 32;
    parameter integer C_S_AXI_AWUSER_WIDTH   = 1;
    parameter integer C_S_AXI_ARUSER_WIDTH   = 1;
    parameter integer C_S_AXI_WUSER_WIDTH    = 1;
    parameter integer C_S_AXI_RUSER_WIDTH    = 1;
    parameter integer C_S_AXI_BUSER_WIDTH    = 1;

    parameter integer C_S_AXI_TARGET         = 0;
    parameter integer C_OFFSET_WIDTH         = 10; // 割り当てるRAMのアドレスのビット幅
    parameter integer C_S_AXI_BURST_LEN      = 256;

    parameter integer WRITE_RANDOM_WAIT      = 1; // Write Transactionデータ転送時にランダムなWaitを発生させる=1、Waitしない=0
    parameter integer READ_RANDOM_WAIT       = 0; // Read Transactionデータ転送時にランダムなWaitを発生させる=1、Waitしない=0
    parameter integer READ_DATA_IS_INCREMENT = 0; // Read TransactionでRAMのデータを読み出す=0、0はじまりの+1データを使う=1
    parameter integer RANDOM_BVALID_WAIT     = 0;  // Write Transaction後、BVALIDをランダムにWaitする=1、ランダムにWaitしない=0
