matrix_multiplication:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_8.txt

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 1
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_1.txt

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 2
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_2.txt

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 4
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_4.txt

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 16
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_16.txt

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 32
	mv m5out/stats.txt m5out/stats_matrix_multiplication_l1_assoc_32.txt

	python m5out/parse.py

