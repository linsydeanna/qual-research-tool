defmodule QualResearchToolWeb.Router do
  use QualResearchToolWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", QualResearchToolWeb do
    pipe_through :api

    get "/interviews", InterviewController, :index
    post "/interviews", InterviewController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", QualResearchToolWeb do
  #   pipe_through :api
  # end
end
