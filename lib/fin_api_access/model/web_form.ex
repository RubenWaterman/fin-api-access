# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule FinAPIAccess.Model.WebForm do
  @moduledoc """
  Container for a web form&#39;s data
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"token",
    :"status",
    :"serviceResponseCode",
    :"serviceResponseBody"
  ]

  @type t :: %__MODULE__{
    :"id" => integer(),
    :"token" => String.t,
    :"status" => String.t,
    :"serviceResponseCode" => integer(),
    :"serviceResponseBody" => String.t
  }
end

defimpl Poison.Decoder, for: FinAPIAccess.Model.WebForm do
  def decode(value, _options) do
    value
  end
end

