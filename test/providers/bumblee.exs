defmodule LangChain.Providers.BumblebeeTest do
  @moduledoc """
  test replicate LLMs
  """
  use ExUnit.Case
  alias LangChain.LanguageModelProtocol
  alias LangChain.Providers.Bumblebee
  require Logger

  @model %Bumblebee{
    model_name: "gpt2"
  }

  # @ms_gpt_model %Bumblebee{
  #   model_name: "microsoft/DialoGPT-large"
  # }

  describe "Bumblebee implementation of LanguageModelProtocol" do
    test "call/2 returns a valid response" do
      prompt = "What time is it now?"
      response = LanguageModelProtocol.call(@model, prompt)
      Logger.debug(response)
      Process.sleep(360_000)
      # assert String.length(response) > 0

      # response2 = LanguageModelProtocol.call(@model, "Fourscore and seven years ago")
      # Logger.debug(response2)
    end

    # test "chat/2 returns a valid response" do
    #   msgs = [
    #     %{text: "Write a sentence containing the word *grue*.", role: "user"},
    #     %{text: "Include a reference to the Dead Mountaineers Hotel."}
    #   ]

    #   response = LanguageModelProtocol.chat(@ms_gpt_model, msgs)
    #   Logger.debug(response)
    #   assert is_list(response)
    #   assert length(response) > 0
    # end
  end
end
