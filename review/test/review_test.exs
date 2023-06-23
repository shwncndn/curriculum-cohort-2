defmodule ReviewTest do
  use ExUnit.Case
  doctest Review

  test "greets the world" do
    assert Review.hello() == :world
  end
end
