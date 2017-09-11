import talib
import numpy as np
import math

def cci(high, low, close, timeperiod=14):
  high = np.asarray(high)
  low = np.asarray(low)
  close = np.asarray(close)

  cci = talib.CCI(high, low, close, timeperiod)
  return float(cci[-1])

def ema(prices, timeperiod=3):
  prices = np.asarray(prices)

  data = talib.EMA(prices, timeperiod=timeperiod)
  return round(float(data[-1]), 3)

def rocp(prices, timeperiod=3):
  prices = np.asarray(prices)

  data = talib.ROCP(prices, timeperiod=timeperiod)
  return round(float(data[-1]), 3)

def macd(prices, fastperiod, slowperiod, signalperiod):
  prices = np.asarray(prices)

  macd, signal, hist = talib.MACD(prices, fastperiod=fastperiod, slowperiod=slowperiod, signalperiod=signalperiod)
  return round(float(hist[-1]), 3)

def q_stick(opens, closes, period):
  opens = np.asarray(opens)
  closes = np.asarray(closes)

  diffs = np.subtract(closes, opens)
  diff_sum = np.sum(diffs)
  q_stick = np.true_divide(diff_sum, period)

  return round(float(q_stick), 3)

def rsi(close, period):
  close = np.asarray(close)

  rsi = talib.RSI(close, timeperiod=period)
  return round(float(rsi[-1]), 3)

def mfi(high, low, close, volume, period):
  high = np.asarray(high)
  low = np.asarray(low)
  close = np.asarray(close)
  volume = np.asarray(volume)

  mfi = talib.MFI(high=high, low=low, close=close, volume=volume, timeperiod=period)
  return float(mfi[-1])
