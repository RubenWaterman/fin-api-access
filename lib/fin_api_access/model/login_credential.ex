# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.LoginCredential do
  @moduledoc """
  Login credential
  """

  @derive [Poison.Encoder]
  defstruct [
    :"label",
    :"value"
  ]

  @type t :: %__MODULE__{
    :"label" => String.t,
    :"value" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.LoginCredential do
  def decode(value, _options) do
    value
  end
end

