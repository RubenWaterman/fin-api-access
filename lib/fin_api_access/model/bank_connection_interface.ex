# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.BankConnectionInterface do
  @moduledoc """
  Resource representing a bank connection interface
  """

  @derive [Poison.Encoder]
  defstruct [
    :"interface",
    :"loginCredentials",
    :"defaultTwoStepProcedureId",
    :"twoStepProcedures",
    :"aisConsent",
    :"lastManualUpdate",
    :"lastAutoUpdate",
    :"userActionRequired"
  ]

  @type t :: %__MODULE__{
    :"interface" => String.t,
    :"loginCredentials" => [LoginCredentialResource],
    :"defaultTwoStepProcedureId" => String.t,
    :"twoStepProcedures" => [TwoStepProcedure],
    :"aisConsent" => BankConsent,
    :"lastManualUpdate" => UpdateResult,
    :"lastAutoUpdate" => UpdateResult,
    :"userActionRequired" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.BankConnectionInterface do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"loginCredentials", :list, FinAPIAccess.Model.LoginCredentialResource, options)
    |> deserialize(:"twoStepProcedures", :list, FinAPIAccess.Model.TwoStepProcedure, options)
    |> deserialize(:"aisConsent", :struct, FinAPIAccess.Model.BankConsent, options)
    |> deserialize(:"lastManualUpdate", :struct, FinAPIAccess.Model.UpdateResult, options)
    |> deserialize(:"lastAutoUpdate", :struct, FinAPIAccess.Model.UpdateResult, options)
  end
end

