import os
import sys
import numpy as np
import xarray as xr
import pandas as pd

sys.path.append(os.path.expanduser('~/dummy_project'))
from dummy_project.dataloading import dutch_rainfall

rf = dutch_rainfall()
print(rf.max())
