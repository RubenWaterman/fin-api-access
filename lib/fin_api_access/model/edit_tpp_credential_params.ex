# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.EditTppCredentialParams do
  @moduledoc """
  A container for editing TPP client credentials data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tppAuthenticationGroupId",
    :"label",
    :"tppClientId",
    :"tppClientSecret",
    :"tppApiKey",
    :"tppName",
    :"validFromDate",
    :"validUntilDate"
  ]

  @type t :: %__MODULE__{
    :"tppAuthenticationGroupId" => integer() | nil,
    :"label" => String.t | nil,
    :"tppClientId" => String.t | nil,
    :"tppClientSecret" => String.t | nil,
    :"tppApiKey" => String.t | nil,
    :"tppName" => String.t | nil,
    :"validFromDate" => String.t | nil,
    :"validUntilDate" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.EditTppCredentialParams do
  def decode(value, _options) do
    value
  end
end

