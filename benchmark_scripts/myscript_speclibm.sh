#!/bin/bash

./build/ARM/gem5.opt -d spec_results_step2/speclibm_0 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=32 --l1d_assoc=32 --l2_assoc=64 --cacheline_size=64 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/speclibm_1 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=8 --cacheline_size=32 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/speclibm_2 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=128kB --l2_size=2MB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=8 --cacheline_size=64 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/speclibm_3 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=1MB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=8 --cacheline_size=64 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/speclibm_4 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=16 --l1d_assoc=16 --l2_assoc=32 --cacheline_size=32 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/speclibm_5 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=128kB --l2_size=4MB --l1i_assoc=16 --l1d_assoc=16 --l2_assoc=32 --cacheline_size=64 -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000 

# 0 -> fully associative
# 1 -> cacheline_size=32
# 2 -> l1_size = 192 , l2=2MB
# 3 -> l1_size = 256 , l2=1MB
# 4 -> fully associative cacheline_size=32
# 5 -> assoc=16,32 , l2 4MB, l1i,d=192
