defmodule Talibex do
  @moduledoc """
  
  """
  alias Talibex.Worker

  @type high :: float
  @type low :: float
  @type open :: float
  @type close :: float
  @type volume :: float
  @type candle :: {high, low, open, close, volume}

  @doc "Exponentiel moving average"
  def ema(data, period \\ 12), do: call(:momentum, :ema, [data, period])

  @doc ""
  def rocp(data, period \\ 10), do: call(:momentum, :rocp, [data, period])

  @doc "Moving average convergence/divergence"
  def macd(close, fast \\ 12, slow \\ 26, signal \\ 9), do: call(:momentum, :macd, [close, fast, slow, signal])

  @doc "Commodity channel index"
  def cci(high, low, close, period \\ 14), do: call(:momentum, :cci, [high, low, close, period])

  @doc "Money flow index"
  def mfi(high, low, close, volume, period \\ 14), do: call(:momentum, :mfi, [high, low, close, volume, period])

  @doc "Relative strength index"
  def rsi(close, period \\ 14), do: call(:momentum, :rsi, [close, period])

  @doc "Q-stick"
  def q_stick(open, close, period \\ 14), do: call(:momentum, :q_stick, [open, close, period])

  @doc "3 Outside"
  def three_outside(open, high, low, close), do: call(:pattern, :three_outside, [open, high, low, close])

  @doc "Evening star"
  def evening_star(open, high, low, close, penetration \\ 0), do: call(:pattern, :evening_star, [open, high, low, close, penetration])

  defp call(file, function, arguments) do
    Worker.call(file, function, arguments)
  end

end 
