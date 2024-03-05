# iex -S mix run

"../bloke/top100.csv"
    |> Path.expand(__DIR__)
    |> File.stream!
    |> Stream.drop(1)
    |> Stream.map(&String.trim(&1, "\n"))
    |> Stream.map(&String.split(&1, ","))
    |> Enum.map(
    fn(pairs) ->
    val = List.first(pairs)
    IO.puts val
    model = %LangChain.Providers.Bumblebee.LanguageModel{    model_name: val  }
    response = LangChain.LanguageModelProtocol.ask(model, "Why is Elixir a good language for AI applications?")
    IO.puts response
    response = LangChain.LanguageModelProtocol.ask(model, "Why is Elixir a good language for AI applications? Because [MASK]")
    IO.puts response
end)