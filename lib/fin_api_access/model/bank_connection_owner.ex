# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BankConnectionOwner do
  @moduledoc """
  Container for a bank connection owner&#39;s data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"firstName",
    :"lastName",
    :"salutation",
    :"title",
    :"email",
    :"dateOfBirth",
    :"postCode",
    :"country",
    :"city",
    :"street",
    :"houseNumber"
  ]

  @type t :: %__MODULE__{
    :"firstName" => String.t,
    :"lastName" => String.t,
    :"salutation" => String.t,
    :"title" => String.t,
    :"email" => String.t,
    :"dateOfBirth" => String.t,
    :"postCode" => String.t,
    :"country" => String.t,
    :"city" => String.t,
    :"street" => String.t,
    :"houseNumber" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BankConnectionOwner do
  def decode(value, _options) do
    value
  end
end
