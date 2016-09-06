ncvlog -messages -cdslib cds.lib -hdlvar hdl.var ../src/*.v
ncvhdl -messages -cdslib cds.lib -hdlvar hdl.var ../src/*.vhd
ncelab -messages -libname wrk -access +rwc wrk.tb_counter -timescale 1ns/1ns
ncsim -messages wrk.tb_counter

