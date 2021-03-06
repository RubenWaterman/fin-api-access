# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Api.TPPCertificates do
  @moduledoc """
  API calls for all endpoints tagged `TPPCertificates`.
  """

  alias FinAPIAccess.Connection
  import FinAPIAccess.RequestBuilder


  @doc """
  Create a new certificate
  Upload a new TPP certificate. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token. <br/>QWAC certificate is used to verify your identity by the bank during the TLS handshake.<br/>QsealC certificate is used to sign the requests to the bank.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - tpp_certificate_params (TppCertificateParams): Create new certificate parameters
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %FinAPIAccess.Model.TppCertificate{}} on success
  {:error, info} on failure
  """
  @spec create_new_certificate(Tesla.Env.client, FinAPIAccess.Model.TppCertificateParams.t, keyword()) :: {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.TppCertificate.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:error, Tesla.Env.t}
  def create_new_certificate(connection, tpp_certificate_params, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/api/v1/tppCertificates")
    |> add_param(:body, :body, tpp_certificate_params)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FinAPIAccess.Model.TppCertificate{}},
      { 400, %FinAPIAccess.Model.ErrorMessage{}},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 422, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end

  @doc """
  Delete a certificate
  Delete a single certificate by its id. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Id of the certificate to delete
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_certificate(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:error, Tesla.Env.t}
  def delete_certificate(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/api/v1/tppCertificates/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 404, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end

  @doc """
  Get all certificates
  Returns all certificates that you have uploaded via 'Create a new certificate' service. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :page (integer()): Result page that you want to retrieve
    - :per_page (integer()): Maximum number of records per page. By default it's 20. Can be at most 500.
  ## Returns

  {:ok, %FinAPIAccess.Model.PageableTppCertificateList{}} on success
  {:error, info} on failure
  """
  @spec get_all_certificates(Tesla.Env.client, keyword()) :: {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.PageableTppCertificateList.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:error, Tesla.Env.t}
  def get_all_certificates(connection, opts \\ []) do
    optional_params = %{
      :"page" => :query,
      :"perPage" => :query
    }
    %{}
    |> method(:get)
    |> url("/api/v1/tppCertificates")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FinAPIAccess.Model.PageableTppCertificateList{}},
      { 400, %FinAPIAccess.Model.ErrorMessage{}},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end

  @doc """
  Get a certificate
  Get a single certificate by its id. Must pass the <a href='https://finapi.zendesk.com/hc/en-us/articles/115003661827-Difference-between-app-clients-and-mandator-admin-client' target='_blank'>mandator admin client</a>'s access_token.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Id of requested certificate
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %FinAPIAccess.Model.TppCertificate{}} on success
  {:error, info} on failure
  """
  @spec get_certificate(Tesla.Env.client, integer(), keyword()) :: {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.TppCertificate.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:error, Tesla.Env.t}
  def get_certificate(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/v1/tppCertificates/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FinAPIAccess.Model.TppCertificate{}},
      { 400, %FinAPIAccess.Model.ErrorMessage{}},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 404, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end
end
