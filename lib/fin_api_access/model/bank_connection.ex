# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BankConnection do
  @moduledoc """
  Container for a bank connection&#39;s data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type",
    :"updateStatus",
    :"categorizationStatus",
    :"interfaces",
    :"accountIds",
    :"owners",
    :"bank"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"name" => String.t,
    :"type" => String.t,
    :"updateStatus" => String.t,
    :"categorizationStatus" => String.t,
    :"interfaces" => [BankConnectionInterface],
    :"accountIds" => [integer()],
    :"owners" => [BankConnectionOwner],
    :"bank" => Bank
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BankConnection do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"interfaces", :list, FinAPIAccess.Model.BankConnectionInterface, options)
    |> deserialize(:"owners", :list, FinAPIAccess.Model.BankConnectionOwner, options)
    |> deserialize(:"bank", :struct, FinAPIAccess.Model.Bank, options)
  end
end

