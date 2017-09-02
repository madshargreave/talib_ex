defmodule TalibexTest do
  use ExUnit.Case
  doctest Talibex

  @closes [
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0,
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0,
    1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0, 1.0, 2.0, 3.0, 4.0, 2.0
  ]

  test "rocp/1" do
    assert Talibex.rocp(@closes, 14) == {:ok, 1}
  end

  test "rsi/1" do
    assert Talibex.rsi(@closes, 14) == {:ok, 48.729}
  end

  # test "macd/1" do
  #   assert Talibex.macd(@closes) == {:ok, -0.5}
  # end

end
