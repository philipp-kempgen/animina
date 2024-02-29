defmodule Animina.Repo.Migrations.AddEmoji do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:traits_flags) do
      add :emoji, :text
    end
  end

  def down do
    alter table(:traits_flags) do
      remove :emoji
    end
  end
end