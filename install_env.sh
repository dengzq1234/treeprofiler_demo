# Install ETE Toolkit v4
pip install --force-reinstall https://github.com/etetoolkit/ete/archive/ete4.zip

# Install TreeProfiler dependencies
pip install biopython selenium scipy matplotlib numba numpy

# Install pastml package for ete4
pip install git+https://github.com/dengzq1234/pastml.git@pastml2ete4

# Install development mode for latestest update
pip install git+https://github.com/compgenomicslab/TreeProfiler@dev-repo