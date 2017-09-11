import talib
import numpy as np
import math

def obv(closes, volume):
  closes = np.asarray(closes)
  volume = np.asarray(volume)

  data = talib.OBV(closes, volume)
  return round(float(data[-1]), 3)
