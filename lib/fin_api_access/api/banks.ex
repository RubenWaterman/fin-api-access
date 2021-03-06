# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FinAPIAccess.Api.Banks do
  @moduledoc """
  API calls for all endpoints tagged `Banks`.
  """

  alias FinAPIAccess.Connection
  import FinAPIAccess.RequestBuilder


  @doc """
  Get and search all banks
  Get and search banks from finAPI's database of banks. Must pass the authorized user's access_token, or your client's access_token. You can set optional search criteria to get only those banks that you are interested in. If you do not specify any search criteria, then this service functions as a 'get all' service.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :ids ([integer()]): A comma-separated list of bank identifiers. If specified, then only banks whose identifier match any of the given identifiers will be regarded. The maximum number of identifiers is 1000.
    - :search (String.t): If specified, then only those banks will be contained in the result whose 'name', 'blz', 'bic' or 'city' contains the given search string (the matching works case-insensitive). If no banks contain the search string in any of the regarded fields, then the result will be an empty list. Note that you may also pass an IBAN in this field, in which case finAPI will try to detect the related bank and regard only this bank for the search (The IBAN may not contain spaces). Also note: If the given search string consists of several terms (separated by whitespace), then ALL of these terms must apply to a bank in order for it to get included into the result.
    - :supported_interfaces ([String.t]): Comma-separated list of bank interfaces. Possible values: FINTS_SERVER,WEB_SCRAPER,XS2A. If this parameter is specified, then all the banks that support at least one of the given interfaces will be returned. Note that this does NOT imply that those interfaces must be the only ones that are supported by a bank.
    - :location ([String.t]): Comma-separated list of two-letter country codes (ISO 3166 ALPHA-2), for example: DE, AT. If set, then only those banks will be regarded in the search that are located in the specified countries. Notes: Banks which do not have a location set (i.e. international institutes) will ALWAYS be regarded in the search, independent of what you specify for this field. When you pass a country code that doesn't exist in the ISO 3166 ALPHA-2 standard, then the service will respond with 400 BAD_REQUEST.
    - :tpp_authentication_group_ids ([integer()]): A comma-separated list of TPP authentication group identifiers. If specified, then only banks who have at least one interface belonging to one of the given groups will be regarded. The maximum number of identifiers is 1000.
    - :is_test_bank (boolean()): If specified, then only those banks will be regarded that have the given value (true or false) for their 'isTestBank' field.
    - :page (integer()): Result page that you want to retrieve.
    - :per_page (integer()): Maximum number of records per page. By default it's 20. Can be at most 500.
    - :order ([String.t]): Determines the order of the results. You can order the results by 'id', 'name', 'blz', 'bic' or 'popularity'. The default order for all services is 'id,asc'. You can also order by multiple properties. In that case the order of the parameters passed is important. Example: '/banks?order=name,desc&order=id,asc' will return banks ordered by 'name' (descending), where banks with the same 'name' are ordered by 'id' (ascending). The general format is: 'property[,asc|desc]', with 'asc' being the default value.
  ## Returns

  {:ok, %FinAPIAccess.Model.PageableBankList{}} on success
  {:error, info} on failure
  """
  @spec get_and_search_all_banks(Tesla.Env.client, keyword()) :: {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:ok, FinAPIAccess.Model.PageableBankList.t} | {:error, Tesla.Env.t}
  def get_and_search_all_banks(connection, opts \\ []) do
    optional_params = %{
      :"ids" => :query,
      :"search" => :query,
      :"supportedInterfaces" => :query,
      :"location" => :query,
      :"tppAuthenticationGroupIds" => :query,
      :"isTestBank" => :query,
      :"page" => :query,
      :"perPage" => :query,
      :"order" => :query
    }
    %{}
    |> method(:get)
    |> url("/api/v1/banks")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FinAPIAccess.Model.PageableBankList{}},
      { 400, %FinAPIAccess.Model.ErrorMessage{}},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end

  @doc """
  Get a bank
  Get a single bank from finAPI's database of banks. You have to pass the bank's identifier, and either the authorized user's access_token, or your client's access token.

  ## Parameters

  - connection (FinAPIAccess.Connection): Connection to server
  - id (integer()): Identifier of requested bank
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %FinAPIAccess.Model.Bank{}} on success
  {:error, info} on failure
  """
  @spec get_bank(Tesla.Env.client, integer(), keyword()) :: {:ok, FinAPIAccess.Model.ErrorMessage.t} | {:ok, FinAPIAccess.Model.Bank.t} | {:ok, FinAPIAccess.Model.BadCredentialsError.t} | {:error, Tesla.Env.t}
  def get_bank(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/v1/banks/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %FinAPIAccess.Model.Bank{}},
      { 400, %FinAPIAccess.Model.ErrorMessage{}},
      { 401, %FinAPIAccess.Model.BadCredentialsError{}},
      { 403, %FinAPIAccess.Model.ErrorMessage{}},
      { 404, %FinAPIAccess.Model.ErrorMessage{}},
      { 500, %FinAPIAccess.Model.ErrorMessage{}}
    ])
  end
end
