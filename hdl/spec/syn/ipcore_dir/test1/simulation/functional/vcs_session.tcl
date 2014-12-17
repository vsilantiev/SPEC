gui_open_window Wave
gui_sg_create test1_group
gui_list_add_group -id Wave.1 {test1_group}
gui_sg_addsignal -group test1_group {test1_tb.test_phase}
gui_set_radix -radix {ascii} -signals {test1_tb.test_phase}
gui_sg_addsignal -group test1_group {{Input_clocks}} -divider
gui_sg_addsignal -group test1_group {test1_tb.CLK_IN1}
gui_sg_addsignal -group test1_group {{Output_clocks}} -divider
gui_sg_addsignal -group test1_group {test1_tb.dut.clk}
gui_list_expand -id Wave.1 test1_tb.dut.clk
gui_sg_addsignal -group test1_group {{Status_control}} -divider
gui_sg_addsignal -group test1_group {test1_tb.RESET}
gui_sg_addsignal -group test1_group {test1_tb.LOCKED}
gui_sg_addsignal -group test1_group {{Counters}} -divider
gui_sg_addsignal -group test1_group {test1_tb.COUNT}
gui_sg_addsignal -group test1_group {test1_tb.dut.counter}
gui_list_expand -id Wave.1 test1_tb.dut.counter
gui_zoom -window Wave.1 -full
