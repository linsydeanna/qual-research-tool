defmodule QualResearchTool.Interview do
  # use Ecto.Schema

  alias QualResearchTool.Interview.Schema
  alias QualResearchTool.Repo

  import Ecto.Changeset

  @doc """
  List all interviews.
  """
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

  @doc """
  Update an interview.
  """
  def update_interview(%{"id" => id, "response" => response}) do
    interview_to_update = Repo.get(Schema, id)
    changeset = cast(interview_to_update, %{response: response}, [:response])
    Repo.update(changeset)
  end
end
