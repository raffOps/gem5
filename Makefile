matrix_multiplication_assoc:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 1 --l1i_assoc 1
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_1.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 2 --l1i_assoc 2
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_2.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 4 --l1i_assoc 4
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_4.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 8 --l1i_assoc 8
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 16 --l1i_assoc 16
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 32 --l1i_assoc 32
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 64 --l1i_assoc 64
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_64.txt"

	python m5out/parse.py matrix_multiplication

