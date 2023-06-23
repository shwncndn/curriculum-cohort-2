defmodule Review.ControlFlow.Grade do
    @doc """
    Return the appropriate letter grade for a given integer grade. 
    Assume you do not need to handle floats.
  
    86-100: A
    72-85:  B
    62-71:  C
    51-61:  D
    0-50:   F
  
    iex> Grade.letter_grade(86)
    "A"
    iex> Grade.letter_grade(51)
    "D"
    """
    def letter_grade(integer) do
      cond do
        integer >= 86 and integer <= 100 -> "A"
        integer >= 72 and integer <= 85 -> "B"
        integer >= 62 and integer <= 71 -> "C"
        integer >= 51 and integer <= 61 -> "D"
        integer >= 0 and integer <= 50 -> "F"
        true -> "Please enter a valid score"
      end
    end
  
    @doc """
    Return the grade range for a given letter grade.
  
    A: 86..100
    B: 72..85
    C: 62..71
    D: 51..61
    F: 0..50
  
    iex> Grade.grade_range("A")
    86..100
    iex> Grade.grade_range("C")
    62..71
    """
    def grade_range(letter) do
      case letter do
        "A" -> 86..100
        "B" -> 72..85
        "C" -> 62..71
        "D" -> 51..61
        "F" -> 0..50
        _ -> "Please enter a valid letter grade"
      end
    end
  
    @doc """
    Determine if a number grade is a passing grade (50 or above)
    iex> Grade.pass?(50)
    "50 is a passing grade."
  
    iex> Grade.pass?(100)
    "100 is a passing grade."
  
  
    iex> Grade.pass?(20)
    "20 is a failing grade."
    """
    def pass?(integer) do
     cond do
      integer >= 50 and integer <= 100 -> "#{integer} is a passing grade"
      integer <= 50 -> "#{integer} is a failing grade"
      true -> "Please enter a valid score" 
      end
    end
  end
  