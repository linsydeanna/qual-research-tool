defmodule QualResearchTool.Repo.Migrations.AddInterviewsTable do
  use Ecto.Migration

  def change do
    create table(:interviews) do
      add :response, :string

      timestamps()
    end
  end
end
