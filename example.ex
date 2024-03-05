# iex -S mix run
model = %LangChain.Providers.Bumblebee.LanguageModel{    model_name: "gpt2"  }
response = LangChain.LanguageModelProtocol.ask(model, "Why is Elixir a good language for AI applications?")