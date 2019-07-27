defmodule QualResearchTool.Interview do
  use Ecto.Schema
  alias QualResearchTool.Repo

  schema "interviews" do
    field :response, :string
    field :date, :utc_datetime

    timestamps()
  end

  @doc """
  List the challenges available in a particular collection.
  """
  # @spec list_interviews() :: [t()] ??
  def list_interviews() do
    Interview
    |> Repo.all()
  end
end
