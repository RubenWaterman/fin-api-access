# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.UpdateBankConnectionParams do
  @moduledoc """
  Container for bank connection update parameters
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bankConnectionId",
    :"interface",
    :"loginCredentials",
    :"storeSecrets",
    :"importNewAccounts",
    :"skipPositionsDownload",
    :"loadOwnerData",
    :"accountReferences",
    :"multiStepAuthentication",
    :"redirectUrl",
    :"forceWebForm"
  ]

  @type t :: %__MODULE__{
    :"bankConnectionId" => integer(),
    :"interface" => String.t,
    :"loginCredentials" => [LoginCredential],
    :"storeSecrets" => boolean(),
    :"importNewAccounts" => boolean(),
    :"skipPositionsDownload" => boolean(),
    :"loadOwnerData" => boolean(),
    :"accountReferences" => [AccountReference],
    :"multiStepAuthentication" => MultiStepAuthenticationCallback,
    :"redirectUrl" => String.t,
    :"forceWebForm" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.UpdateBankConnectionParams do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"loginCredentials", :list, FinAPIAccess.Model.LoginCredential, options)
    |> deserialize(:"accountReferences", :list, FinAPIAccess.Model.AccountReference, options)
    |> deserialize(:"multiStepAuthentication", :struct, FinAPIAccess.Model.MultiStepAuthenticationCallback, options)
  end
end

