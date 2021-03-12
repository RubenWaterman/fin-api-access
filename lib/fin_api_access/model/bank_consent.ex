# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BankConsent do
  @moduledoc """
  Bank consent information
  """

  @derive [Poison.Encoder]
  defstruct [
    :"status",
    :"expiresAt"
  ]

  @type t :: %__MODULE__{
    :"status" => String.t,
    :"expiresAt" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BankConsent do
  def decode(value, _options) do
    value
  end
end
