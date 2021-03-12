# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.PageableTppAuthenticationGroupResources do
  @moduledoc """
  TPP Authentication groups with paging information
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tppAuthenticationGroups",
    :"paging"
  ]

  @type t :: %__MODULE__{
    :"tppAuthenticationGroups" => [TppAuthenticationGroup],
    :"paging" => Paging
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.PageableTppAuthenticationGroupResources do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"tppAuthenticationGroups", :list, FinAPIAccess.Model.TppAuthenticationGroup, options)
    |> deserialize(:"paging", :struct, FinAPIAccess.Model.Paging, options)
  end
end

