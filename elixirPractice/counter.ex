defmodule Counter do

  def start() do
    "words.txt"
    |> get_words()
    |> parse_body()
    |> summarize(0)
  end

  def get_words(file) do
    {:ok, body} = File.read(file)
    body
  end

  def parse_body(body) do
    body = String.split(body, "\n")
    [_head|tail] = Enum.reverse(body)
    tail
  end

  def summarize([], counter), do: IO.puts "Contando: #{counter}"

  def summarize(list, counter) do
    [head|tail] = list
    summarize(tail, head, counter)
  end

  def summarize(list, "(", counter) do
    summarize(list, counter-1)
  end

  def summarize(list, ")", counter) do
    summarize(list, counter+1)
  end

end

Counter.start()
