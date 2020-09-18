transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/USER/Documents/2020-2/electronica\ digital\ l/github/lab00-jomolinam/quartus {C:/Users/USER/Documents/2020-2/electronica digital l/github/lab00-jomolinam/quartus/sum1bcc.v}

