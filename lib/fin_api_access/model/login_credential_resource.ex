# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.LoginCredentialResource do
  @moduledoc """
  Container for a bank login credential
  """

  @derive [Poison.Encoder]
  defstruct [
    :"label",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"label" => String.t | nil,
    :"value" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.LoginCredentialResource do
  def decode(value, _options) do
    value
  end
end

