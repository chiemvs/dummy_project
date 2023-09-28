import os
import sys
import numpy as np
import xarray as xr
import pandas as pd

from .utils import location_of_netherlands

datapath = '/scistor/ivm/data_catalogue/observations/EOBS/rr_ens_mean_0.1deg_reg_v27.0e.nc'

#def dutch_rainfall():
#    da = xr.open_dataarray(datapath)
#    rf = da.sel(latitude = 52, longitude = 5.2, method = 'nearest')
#    return rf

def dutch_rainfall():
    da = xr.open_dataarray(datapath)
    rf = da.sel(**location_of_netherlands, method = 'nearest')
    return rf
