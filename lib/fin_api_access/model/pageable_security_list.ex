# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.PageableSecurityList do
  @moduledoc """
  Container for page of securities
  """

  @derive [Poison.Encoder]
  defstruct [
    :"securities",
    :"paging"
  ]

  @type t :: %__MODULE__{
    :"securities" => [Security],
    :"paging" => Paging
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.PageableSecurityList do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"securities", :list, FinAPIAccess.Model.Security, options)
    |> deserialize(:"paging", :struct, FinAPIAccess.Model.Paging, options)
  end
end

