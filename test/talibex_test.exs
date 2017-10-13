defmodule TalibexTest do
  use ExUnit.Case
  doctest Talibex

  @closes [
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0
  ]

  # Momentum

  test "rsi/1" do
    assert Talibex.rsi(@closes, 2) == {:ok, [nil, nil, 100.0, 100.0, 33.333333, 20.0, 55.555556, 76.470588, 87.878788, 29.896907, 18.012422, 54.32526, 75.779817, 87.511826]}
  end

  test "macd/1" do
    assert Talibex.macd(@closes, 4, 8, 6) == {:ok, [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0.127911, 0.293614]}
  end

  test "ppo/1" do
    assert Talibex.ppo(@closes, 4, 8) == {:ok, [nil, nil, nil, nil, nil, nil, nil, -11.111111, -4.761905, 4.761905, 5.263158, 5.882353, -11.111111, -4.761905]}
  end

  # # Volume

  test "obv/2" do
    assert Talibex.obv([1.0, 5.0, 2.5], [10.0, 10.0, 10.0]) == {:ok, [10.0, 20.0, 10.0]}
  end

end
