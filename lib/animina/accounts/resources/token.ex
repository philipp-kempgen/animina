defmodule Animina.Accounts.Token do
  @moduledoc """
  This is the Toke module.
  """
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshAuthentication.TokenResource]

  token do
    api Animina.Accounts
  end

  postgres do
    table "tokens"
    repo Animina.Repo
  end

  # TODO: Uncomment this if you want to use policies
  # If using policies, add the following bypass:
  # policies do
  #   bypass AshAuthentication.Checks.AshAuthenticationInteraction do
  #     authorize_if always()
  #   end
  # end
end
