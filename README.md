## Telescope-NumPy Compatibility Patch
Author: Randy Essikpe
Date: 2026-03-04
DOI: 10.5281/zenodo.18933215

# Telescope-Pipeline
This is a fully comprehensive telescope pipeline. All deprecated aliases issues related to NumPy have been resolved. This repo only contains the pipeline details to recreate my working pipeline. All dependent packages and tools (such as Telescope, etc.) should be downloaded from the original GitHub repo.

### Purpose
Fix deprecated NumPy aliases (`np.int`, `np.float`, etc.) removed in NumPy >=1.24.

### Usage if Using The Patch
1. Create environment: 
   - conda env create -f telescope3_env.yml

2. Activate: 
   - conda activate telescope3

3. Locate Telescope install path:
   - TPATH=$(python -c "import telescope, os; print(os.path.dirname(telescope.__file__))")

4. Navigate to the path: 
   - cd "$TPATH"

5. Apply patch:
   - patch -p0 < /patch/to/telescope_numpy_fix.patch



### Usage if Using The Script
1. Create environment:
   - conda env create -f telescope3_env.yml

2. Activate:
   - conda activate telescope3

3. Run the NumpyFix.sh Script:
   - bash NumpyFix.sh

### Notes
Tested on Python 3.10, NumPy 1.23–1.26, Telescope 1.0.3
