#!/bin/bash

./build/ARM/gem5.opt -d spec_results_step2/specbzip_0 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=2 --cacheline_size=64 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specbzip_1 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=16 --cacheline_size=64 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specbzip_2 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=64 --l1d_assoc=64 --l2_assoc=64 --cacheline_size=64 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specbzip_3 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=8 --cacheline_size=32 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specbzip_4 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=32kB --l2_size=1MB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=16 --cacheline_size=64 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specbzip_5 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=128kB --l2_size=4MB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=16 --cacheline_size=64 -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000 


# 0 -> l1_assoc=1 , l2_assoc=2, cacheline=64 ,l1i_size=64 ,l1d_size=32 , l2_size=1024
# 1 -> l1_assoc=8 , l2_assoc=16, cacheline=64 ,l1i_size=64 ,l1d_size=32 , l2_size=512
# 2 -> l1_assoc=64 , l2_assoc=64, cacheline=64 ,l1i_size=128 ,l1d_size=64 , l2_size=2048
# 3 -> l1_assoc=2 , l2_assoc=8, cacheline=32 ,l1i_size=64 ,l1d_size=32 , l2_size=1024
# 4 -> l1_assoc=4 , l2_assoc=16, cacheline=64 ,l1i_size=32 ,l1d_size=64 , l2_size=1MB
# 5 -> l1_assoc=4 , l2_assoc=16, cacheline=64 ,l1i_size=128 ,l1d_size=64 , l2_size=4MB
