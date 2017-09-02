defmodule TalibexTest do
  use ExUnit.Case
  doctest Talibex

  @closes [
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0,
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0,
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0
  ]

  # Momentum

  test "rocp/1" do
    assert Talibex.rocp(@closes, 14) == {:ok, 1}
  end

  test "rsi/1" do
    assert Talibex.rsi(@closes, 14) == {:ok, 48.729}
  end

  # Volume

  test "obv/2" do
    assert Talibex.obv([1.0, 5.0, 2.5], [10.0, 10.0, 10.0]) == {:ok, 10.0}
  end


  test "macd/1" do
    assert Talibex.macd(@closes, 14) == {:ok, 0.027}
  end

end
