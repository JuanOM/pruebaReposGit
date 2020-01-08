defmodule FizzBuzz do

  def start() do
    numbers = Enum.to_list(1..100)
    Enum.each(numbers, fn number ->
      fb = apply_fizzbuzz(number)
      IO.puts ":: #{fb}"
    end)
  end

  def apply_fizzbuzz(number) do
    fizz_validation = (rem(number, 3) == 0)
    buzz_validation = (rem(number, 5) == 0)
    validation_tuple = {fizz_validation, buzz_validation}

    apply_fizzbuzz(number, validation_tuple)
  end

  def apply_fizzbuzz(_number, {true, true}) do
    "FizzBuzz"
  end
  def apply_fizzbuzz(_number, {true, false}) do
    "Fizz"
  end
  def apply_fizzbuzz(_number, {false, true}) do
    "Buzz"
  end
  def apply_fizzbuzz(number, {false, false}) do
    number
  end

end

FizzBuzz.start()
