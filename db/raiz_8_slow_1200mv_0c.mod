


INPUT rstsystem;
INPUT clk;
INPUT entrada[0];
INPUT entrada[1];
INPUT entrada[2];
INPUT entrada[3];
INPUT entrada[4];
INPUT entrada[5];
INPUT entrada[6];
INPUT entrada[7];
OUTPUT resultado[0];
OUTPUT resultado[1];
OUTPUT resultado[2];
OUTPUT resultado[3];
OUTPUT resultado[4];
OUTPUT resultado[5];
OUTPUT resultado[6];
OUTPUT resultado[7];

/*Arc definitions start here*/
pos_entrada[0]__clk__setup:		SETUP (POSEDGE) entrada[0] clk ;
pos_entrada[1]__clk__setup:		SETUP (POSEDGE) entrada[1] clk ;
pos_entrada[2]__clk__setup:		SETUP (POSEDGE) entrada[2] clk ;
pos_entrada[3]__clk__setup:		SETUP (POSEDGE) entrada[3] clk ;
pos_entrada[4]__clk__setup:		SETUP (POSEDGE) entrada[4] clk ;
pos_entrada[5]__clk__setup:		SETUP (POSEDGE) entrada[5] clk ;
pos_entrada[6]__clk__setup:		SETUP (POSEDGE) entrada[6] clk ;
pos_entrada[7]__clk__setup:		SETUP (POSEDGE) entrada[7] clk ;
pos_entrada[0]__clk__hold:		HOLD (POSEDGE) entrada[0] clk ;
pos_entrada[1]__clk__hold:		HOLD (POSEDGE) entrada[1] clk ;
pos_entrada[2]__clk__hold:		HOLD (POSEDGE) entrada[2] clk ;
pos_entrada[3]__clk__hold:		HOLD (POSEDGE) entrada[3] clk ;
pos_entrada[4]__clk__hold:		HOLD (POSEDGE) entrada[4] clk ;
pos_entrada[5]__clk__hold:		HOLD (POSEDGE) entrada[5] clk ;
pos_entrada[6]__clk__hold:		HOLD (POSEDGE) entrada[6] clk ;
pos_entrada[7]__clk__hold:		HOLD (POSEDGE) entrada[7] clk ;
pos_clk__resultado[0]__delay:		DELAY (POSEDGE) clk resultado[0] ;
pos_clk__resultado[1]__delay:		DELAY (POSEDGE) clk resultado[1] ;
pos_clk__resultado[2]__delay:		DELAY (POSEDGE) clk resultado[2] ;
pos_clk__resultado[3]__delay:		DELAY (POSEDGE) clk resultado[3] ;
pos_clk__resultado[4]__delay:		DELAY (POSEDGE) clk resultado[4] ;
pos_clk__resultado[5]__delay:		DELAY (POSEDGE) clk resultado[5] ;
pos_clk__resultado[6]__delay:		DELAY (POSEDGE) clk resultado[6] ;
pos_clk__resultado[7]__delay:		DELAY (POSEDGE) clk resultado[7] ;

ENDMODEL
