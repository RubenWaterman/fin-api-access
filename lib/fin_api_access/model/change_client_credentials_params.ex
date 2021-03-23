# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.ChangeClientCredentialsParams do
  @moduledoc """
  Container for change client credentials parameters
  """

  @derive [Poison.Encoder]
  defstruct [
    :"clientId",
    :"oldClientSecret",
    :"newClientSecret"
  ]

  @type t :: %__MODULE__{
    :"clientId" => String.t,
    :"oldClientSecret" => String.t,
    :"newClientSecret" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.ChangeClientCredentialsParams do
  def decode(value, _options) do
    value
  end
end

