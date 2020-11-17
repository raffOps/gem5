matrix_multiplication_assoc:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 1
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_1.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 2
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_2.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 4
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_4.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 8
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 16
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 32
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_assoc 64
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 associatividade_64.txt"

matrix_multiplication_branch:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --branch_predictor 'BiModeBP'
	mv m5out/stats.txt "m5out/MatrixMultiplication_branch predictor_BiMode.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --branch_predictor 'LocalBP'
	mv m5out/stats.txt "m5out/MatrixMultiplication_branch predictor_Local.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --branch_predictor 'TournamentBP'
	mv m5out/stats.txt "m5out/MatrixMultiplication_branch predictor_Tournament.txt"

matrix_multiplication_size_cache:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 8kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 16kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 32kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 64kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_64.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 128kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_128.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/matrix_multiplication --l1d_size 256kB
	mv m5out/stats.txt "m5out/MatrixMultiplication_l1 size_256.txt"

custo_min_assoc:
		./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_assoc 1
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_1.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_assoc 2
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_2.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo  --l1d_assoc 4
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_4.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo  --l1d_assoc 8
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo  --l1d_assoc 16
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo  --l1d_assoc 32
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo  --l1d_assoc 64
	mv m5out/stats.txt "m5out/CustoMinimo_l1 associatividade_64.txt"

custo_min_branch:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --branch_predictor 'BiModeBP'
	mv m5out/stats.txt "m5out/CustoMinimo_branch predictor_BiMode.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --branch_predictor 'LocalBP'
	mv m5out/stats.txt "m5out/CustoMinimo_branch predictor_Local.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --branch_predictor 'TournamentBP'
	mv m5out/stats.txt "m5out/CustoMinimo_branch predictor_Tournament.txt"

custo_min_size_cache:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_size 8kB
	mv m5out/stats.txt "m5out/CustoMinimo_l1 size_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_size 16kB
	mv m5out/stats.txt "m5out/CustoMinimo_l1 size_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_size 32kB
	mv m5out/stats.txt "m5out/CustoMinimo_l1 size_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/custo_minimo --l1d_size 64kB
	mv m5out/stats.txt "m5out/CustoMinimo_l1 size_64.txt"

mergesort_assoc:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_assoc 1
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_1.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_assoc 2
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_2.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_assoc 4
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_4.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_assoc 8
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort  --l1d_assoc 16
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort  --l1d_assoc 32
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort  --l1d_assoc 64
	mv m5out/stats.txt "m5out/Mergesort_l1 associatividade_64.txt"

mergesort_branch:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --branch_predictor 'BiModeBP'
	mv m5out/stats.txt "m5out/Mergesort_branch predictor_BiMode.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --branch_predictor 'LocalBP'
	mv m5out/stats.txt "m5out/Mergesort_branch predictor_Local.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --branch_predictor 'TournamentBP'
	mv m5out/stats.txt "m5out/Mergesort_branch predictor_Tournament.txt"

mergesort_size_cache:
	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_size 8kB
	mv m5out/stats.txt "m5out/Megesort_l1 size_8.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_size 16kB
	mv m5out/stats.txt "m5out/Mergesort_l1 size_16.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_size 32kB
	mv m5out/stats.txt "m5out/Mergesort_l1 size_32.txt"

	./gem5  orgb_configs/simulate.py run-benchmark -c orgb_progs/mergesort --l1d_size 64kB
	mv m5out/stats.txt "m5out/Mergesort_l1 size_64.txt"