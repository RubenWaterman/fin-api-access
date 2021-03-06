# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.PageableTppCredentialResources do
  @moduledoc """
  Container for TPP client credentials information with paging information
  """

  @derive [Poison.Encoder]
  defstruct [
    :"paging",
    :"tppCredentials"
  ]

  @type t :: %__MODULE__{
    :"paging" => Paging,
    :"tppCredentials" => [TppCredentials]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.PageableTppCredentialResources do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"paging", :struct, FinAPIAccess.Model.Paging, options)
    |> deserialize(:"tppCredentials", :list, FinAPIAccess.Model.TppCredentials, options)
  end
end

