#!/bin/bash

TPATH=$(python -c "import telescope, os; print(os.path.dirname(telescope.__file__))")

#The block of code below checks all files in TPATH and updates all .np.init instances to init.
#Other instances like np.float, np.bool, etc. are all updated. 
perl -i.bak -pe '
  s/\bnp\.int\b/int/g;
  s/\bnp\.float\b/float/g;
  s/\bnp\.bool\b/bool/g;
  s/\bnp\.object\b/object/g;
  s/\bnp\.str\b/str/g;
  s/\bnp\.unicode\b/str/g;
  s/\bnp\.complex\b/complex/g;
' $(grep -RIl -E "np\.(int|float|bool|object|str|complex|unicode)" "$TPATH")

echo "Telescope NumPy fix applied."
