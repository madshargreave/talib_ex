defmodule Talibex.Worker do
  use GenServer

  # API
  #

  def start_link(_args) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def call(file, function, arguments) do
    GenServer.call(__MODULE__, {:call, file, function, arguments})
  end

  # Server
  #

  def init(:ok) do
    path =  :code.priv_dir(:talib_ex) |> Path.join("python") |> to_char_list
    {:ok, python} = :python.start([{:python_path, path}, {:python, 'python'}])
    {:ok, python}
  end

  def handle_call({:call, file, function, arguments}, _from, python) do
    result = :python.call(python, file, function, arguments)
    {:reply, {:ok, result}, python}
  rescue
    exception ->
      {:reply, {:error, exception}, python}
  end

end
