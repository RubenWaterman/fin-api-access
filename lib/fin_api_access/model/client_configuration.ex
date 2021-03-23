# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.ClientConfiguration do
  @moduledoc """
  Client configuration parameters
  """

  @derive [Poison.Encoder]
  defstruct [
    :"isAutomaticBatchUpdateEnabled",
    :"isDevelopmentModeEnabled",
    :"isNonEuroAccountsSupported",
    :"isAutoCategorizationEnabled",
    :"mandatorLicense",
    :"preferredConsentType",
    :"userNotificationCallbackUrl",
    :"userSynchronizationCallbackUrl",
    :"refreshTokensValidityPeriod",
    :"userAccessTokensValidityPeriod",
    :"clientAccessTokensValidityPeriod",
    :"maxUserLoginAttempts",
    :"transactionImportLimitation",
    :"isUserAutoVerificationEnabled",
    :"isMandatorAdmin",
    :"isWebScrapingEnabled",
    :"isStandalonePaymentsEnabled",
    :"availableBankGroups",
    :"products",
    :"applicationName",
    :"finTSProductRegistrationNumber",
    :"storeSecretsAvailableInWebForm",
    :"supportSubjectDefault",
    :"supportEmail",
    :"aisWebFormMode",
    :"pisWebFormMode",
    :"pisStandaloneWebFormMode",
    :"paymentsEnabled"
  ]

  @type t :: %__MODULE__{
    :"isAutomaticBatchUpdateEnabled" => boolean(),
    :"isDevelopmentModeEnabled" => boolean(),
    :"isNonEuroAccountsSupported" => boolean(),
    :"isAutoCategorizationEnabled" => boolean(),
    :"mandatorLicense" => String.t,
    :"preferredConsentType" => String.t,
    :"userNotificationCallbackUrl" => String.t | nil,
    :"userSynchronizationCallbackUrl" => String.t | nil,
    :"refreshTokensValidityPeriod" => integer() | nil,
    :"userAccessTokensValidityPeriod" => integer() | nil,
    :"clientAccessTokensValidityPeriod" => integer() | nil,
    :"maxUserLoginAttempts" => integer(),
    :"transactionImportLimitation" => integer() | nil,
    :"isUserAutoVerificationEnabled" => boolean(),
    :"isMandatorAdmin" => boolean(),
    :"isWebScrapingEnabled" => boolean(),
    :"isStandalonePaymentsEnabled" => boolean(),
    :"availableBankGroups" => [String.t],
    :"products" => [String.t],
    :"applicationName" => String.t | nil,
    :"finTSProductRegistrationNumber" => String.t | nil,
    :"storeSecretsAvailableInWebForm" => boolean(),
    :"supportSubjectDefault" => String.t | nil,
    :"supportEmail" => String.t | nil,
    :"aisWebFormMode" => String.t | nil,
    :"pisWebFormMode" => String.t | nil,
    :"pisStandaloneWebFormMode" => String.t | nil,
    :"paymentsEnabled" => boolean()
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.ClientConfiguration do
  def decode(value, _options) do
    value
  end
end

