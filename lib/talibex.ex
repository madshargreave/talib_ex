defmodule Talibex do
  @moduledoc """
  
  """
  alias Talibex.Worker

  @type series :: [float | nil]

  # Momentum

  @doc """
  MACD histogram
  """
  @spec macd(series, integer, integer, integer) :: series
  def macd(close, fast \\ 12, slow \\ 26, signal \\ 9) do 
    Worker.call(:momentum, :macd, [close, fast, slow, signal])
  end

  @doc """
  Relative strength index
  """
  @spec rsi(series, integer) :: series
  def rsi(close, period \\ 14) do 
    Worker.call(:momentum, :rsi, [close, period])
  end

  # Volume

  @doc """
  On-balance volume
  """
  @spec obv(series, series) :: series
  def obv(close, volume) do 
    Worker.call(:volume, :obv, [close, volume])
  end

end 
