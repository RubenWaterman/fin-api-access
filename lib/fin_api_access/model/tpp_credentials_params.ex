# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.TppCredentialsParams do
  @moduledoc """
  A container for new TPP client credentials data
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
    :"tppAuthenticationGroupId" => integer(),
    :"label" => String.t,
    :"tppClientId" => String.t,
    :"tppClientSecret" => String.t,
    :"tppApiKey" => String.t,
    :"tppName" => String.t,
    :"validFromDate" => String.t,
    :"validUntilDate" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.TppCredentialsParams do
  def decode(value, _options) do
    value
  end
end

