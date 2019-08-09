defmodule QualResearchTool.Interview.Schema do
  use Ecto.Schema

  @derive {Jason.Encoder, except: [:__meta__]}
  schema "interviews" do
    field :response, :string

    timestamps()
  end
end
