# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.ImportBankConnectionParams do
  @moduledoc """
  Container for bank connection import parameters
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bankId",
    :"name",
    :"interface",
    :"loginCredentials",
    :"storeSecrets",
    :"skipPositionsDownload",
    :"loadOwnerData",
    :"maxDaysForDownload",
    :"accountTypes",
    :"accountReferences",
    :"multiStepAuthentication",
    :"redirectUrl"
  ]

  @type t :: %__MODULE__{
    :"bankId" => integer(),
    :"name" => String.t | nil,
    :"interface" => String.t | nil,
    :"loginCredentials" => [LoginCredential] | nil,
    :"storeSecrets" => boolean() | nil,
    :"skipPositionsDownload" => boolean() | nil,
    :"loadOwnerData" => boolean() | nil,
    :"maxDaysForDownload" => integer() | nil,
    :"accountTypes" => [String.t] | nil,
    :"accountReferences" => [AccountReference] | nil,
    :"multiStepAuthentication" => MultiStepAuthenticationCallback | nil,
    :"redirectUrl" => String.t | nil
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.ImportBankConnectionParams do
  import FinAPIAccess.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"loginCredentials", :list, FinAPIAccess.Model.LoginCredential, options)
    |> deserialize(:"accountReferences", :list, FinAPIAccess.Model.AccountReference, options)
    |> deserialize(:"multiStepAuthentication", :struct, FinAPIAccess.Model.MultiStepAuthenticationCallback, options)
  end
end

