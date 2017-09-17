defmodule TalibexTest do
  use ExUnit.Case
  doctest Talibex

  @closes [
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0
  ]

  # Momentum

  test "rsi/1" do
    assert Talibex.rsi(@closes, 2) == {:ok, [nil, nil, 100.0, 100.0, 33.33, 20.0, 55.56, 76.47, 87.88, 29.9, 18.01, 54.33, 75.78, 87.51]}
  end

  test "macd/1" do
    assert Talibex.macd(@closes, 4, 8, 6) == {:ok, [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0.13, 0.29]}
  end

  # # Volume

  test "obv/2" do
    assert Talibex.obv([1.0, 5.0, 2.5], [10.0, 10.0, 10.0]) == {:ok, [10.0, 20.0, 10.0]}
  end

end
