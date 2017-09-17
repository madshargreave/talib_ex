import talib
import numpy as np
import math
import utils

def obv(closes, volume):
  closes = np.asarray(closes)
  volume = np.asarray(volume)

  data = talib.OBV(closes, volume)
  return utils.format_result(data)
