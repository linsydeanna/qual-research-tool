defmodule QualResearchTool.Interview do
  # use Ecto.Schema

  alias QualResearchTool.Interview.Schema
  alias QualResearchTool.Repo

  import Ecto.Changeset

  @doc """
  List all interviews.
  """
  # @spec list_interviews() :: [t()] ??
  def list_interviews() do
    Schema
    |> Repo.all()
  end

  @doc """
  Create an interview.
  """
  def create_interview(interview_params) do
    IO.puts("* ----- LOGS ----- *")
    IO.puts("^ ----- LOGS ----- ^")

    changeset = cast(%Schema{}, interview_params, [:response])
    Repo.insert(changeset)
  end
end
