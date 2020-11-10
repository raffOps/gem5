matrix_multiplication:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 1
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_1.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 2
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_2.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 4
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_4.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 8
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 16
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 32
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 64
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_64.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 128
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_128.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1_assoc 256
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_256.txt"

	python m5out/parse.py matrix_multiplication

