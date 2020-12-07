# Advanced-Computer-Architecture-Lab-2

## Second Lab Questions:

Results collected by gem5 running on VirtualBox VM Ubuntu 19.10.
 


### Step 1: Run SPEC CPU2006 benchmarks on gem5

#### Question 1:

We notice in ```se.py```:

```python
from common import Options
```

Therefore, we will look for the simulated CPU's parameters in the ```common/Options.py``` file:

```python
parser.add_option("--l1d_size", type="string", default="64kB")
parser.add_option("--l1i_size", type="string", default="32kB")
parser.add_option("--l2_size", type="string", default="2MB")

parser.add_option("--l1d_assoc", type="int", default=2)
parser.add_option("--l1i_assoc", type="int", default=2)
parser.add_option("--l2_assoc", type="int", default=8)

parser.add_option("--cacheline_size", type="int", default=64)
```
