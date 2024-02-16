defmodule Animina.Repo.Migrations.AddBasicUserLanguage do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:users) do
      add :language, :text
    end
  end

  def down do
    alter table(:users) do
      remove :language
    end
  end
end