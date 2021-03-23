# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Model.UserIdentifiersList do
  @moduledoc """
  Container for list of identifiers of deleted users, and not deleted users (in ascending order)
  """

  @derive [Poison.Encoder]
  defstruct [
    :"deletedUsers",
    :"nonDeletedUsers"
  ]

  @type t :: %__MODULE__{
    :"deletedUsers" => [String.t],
    :"nonDeletedUsers" => [String.t]
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.UserIdentifiersList do
  def decode(value, _options) do
    value
  end
end

