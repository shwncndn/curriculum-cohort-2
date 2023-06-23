defmodule Review.Enumeration do
    @doc """
    Double every integer in a list or range.
  
    iex> Enumeration.double(1..5)
    [2, 4, 6, 8, 10]
    """
    def double(list) do
      Enum.map(list, fn int -> int * 2 end)
    end
  
    @doc """
    Return only the even numbers in a list or range.
  
    iex> Enumeration.evens([2, 2, 5, 4])
    [2, 2, 4]
    """
    def evens(list) do
      Enum.filter(list, fn int -> rem(int, 2) == 0 end)
    end
  
    @doc """
    Sum only the even numbers in a list or range.
  
    iex> Enumeration.sum_evens([2, 2, 5, 4])
    8
    """
    def sum_evens(list) do
      Enum.reduce(list, fn int, acc -> int + acc end)
    end
  end