#!/bin/bash

./build/ARM/gem5.opt -d spec_results_step2/specmcf_0 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=8 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specmcf_1 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2MB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=16 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specmcf_2 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=32kB --l1i_size=32kB --l2_size=512kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=4 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specmcf_3 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cpu-clock=1GHz --l1d_size=32kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=8 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specmcf_4 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cpu-clock=1GHz --l1d_size=128kB --l1i_size=128kB --l2_size=2MB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=16 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 

./build/ARM/gem5.opt -d spec_results_step2/specmcf_5 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --cpu-clock=1GHz --l1d_size=32kB --l1i_size=32kB --l2_size=512kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=4 --cacheline_size=64 -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000 
