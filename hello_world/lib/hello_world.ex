defmodule HelloWorld do
  @moduledoc """
  Documentation for `HelloWorld`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello()
      :world

  """
  def hello do
    "Hello, #{Faker.Person.first_name()}"
  end

  def hello_test, do: :hello
end
