defmodule FizzBuzz do
  def my_fun2(n), do: my_fun(rem(n,3), rem(n,5), n)
  def my_fun(0, 0, _), do: "FizzBuzz"
  def my_fun(0, _, _), do: "Fizz"
  def my_fun(_, 0, _), do: "Buzz"
  def my_fun(_, _, c), do: c
end
