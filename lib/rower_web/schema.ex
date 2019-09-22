defmodule RowerWeb.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(RowerWeb.Schema.AccountTypes)

  query do
    import_fields(:account_queries)
  end

  mutation do
    import_fields(:account_mutations)
  end
end