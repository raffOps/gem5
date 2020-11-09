matrix_multiplication:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication
	mv m5out/stats.txt m5out/stats_matrix_multiplication.txt

matrix_multiplication_teste1:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_size 2MB
	mv m5out/stats.txt m5out/stats_matrix_multiplication_teste1.txt

matrix_multiplication_teste2:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 32
	mv m5out/stats.txt m5out/stats_matrix_multiplication_teste2.txt

matrix_multiplication_teste3:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_tag_latency 64
	mv m5out/stats.txt m5out/stats_matrix_multiplication_teste3.txt