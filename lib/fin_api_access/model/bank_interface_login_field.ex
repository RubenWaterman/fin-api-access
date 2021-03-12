# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BankInterfaceLoginField do
  @moduledoc """
  Container for a bank&#39;s login credential field
  """

  @derive [Poison.Encoder]
  defstruct [
    :"label",
    :"isSecret",
    :"isVolatile"
  ]

  @type t :: %__MODULE__{
    :"label" => String.t,
    :"isSecret" => boolean(),
    :"isVolatile" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BankInterfaceLoginField do
  def decode(value, _options) do
    value
  end
end

