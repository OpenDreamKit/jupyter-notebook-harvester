# Experimental tools to harvest (SageMath) notebooks from GitHub and index their latex formulae for MathHub searches

Authors: Tom Wiesing and Nicolas M. Thiéry

Usage:

Get a GitHub authentication token, e.g. on https://github.com/settings/tokens/new

Download all Sage notebooks on GitHub that use "%display latex" (takes a couple minutes):

    TOKEN=<token> make download

They will be put in `notebooks/<github_owner>/<repo>/<filename>.ipynb`

Harvest the notebooks (takes about one hour for 500 notebooks):

    make harvest

The index for each notebook will be put in a `.harvest.gz` file next
to the notebook.
