defmodule CICD do
  @moduledoc """
    CICD `main module`
  """

  use Application
  require Logger

  def start(_type, _args) do
    Logger.info("Hello world")
  end
end
