# mix run example.ex

{:ok, hostname} = :inet.gethostname
IO.puts "looking for inputs in ./batches/#{hostname}" 
#File.rm_rf("/home/ubuntu/.cache/bumblebee/huggingface/") # delete all models for space

"./batches/#{hostname}" 
# iex -S mix run
#File.rm_rf("/home/ubuntu/.cache/bumblebee/huggingface/") # delete all models for space
    

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

 #   File.rm_rf("/home/ubuntu/.cache/bumblebee/huggingface/") # delete all models for space
end)

