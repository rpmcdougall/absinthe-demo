defmodule CommunityWeb.Router do
  use CommunityWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: CommunityWeb.Schema, json_codec: Jason

    # forward "/", Absinthe.Plug,
    #   schema: CommunityWeb.Schema

  end
end
