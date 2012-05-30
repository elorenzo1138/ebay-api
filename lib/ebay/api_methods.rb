
module Ebay
  module ApiMethods
    # Builds Ebay::Requests#FetchToken
    #
    # Returns Ebay::Responses#FetchToken
    #
    # Official Documentation for FetchToken[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_FetchToken.html]
    def fetch_token(params = {})
      commit(Ebay::Requests::FetchToken, params, Ebay::Responses::FetchToken)
    end
    # Builds Ebay::Requests#GetAccount
    #
    # Returns Ebay::Responses#GetAccount
    #
    # Official Documentation for GetAccount[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_GetAccount.html]
    def get_account(params = {})
      commit(Ebay::Requests::GetAccount, params, Ebay::Responses::GetAccount)
    end
    # Builds Ebay::Requests#GetSellerTransactions
    #
    # Returns Ebay::Responses#GetSellerTransactions
    #
    # Official Documentation for GetSellerTransactions[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_GetSellerTransactions.html]
    def get_seller_transactions(params = {})
      commit(Ebay::Requests::GetSellerTransactions, params, Ebay::Responses::GetSellerTransactions)
    end
    # Builds Ebay::Requests#GetOrders
    #
    # Returns Ebay::Responses#GetOrders
    #
    # Official Documentation for GetOrders[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_GetOrders.html]
    def get_orders(params = {})
      commit(Ebay::Requests::GetOrders, params, Ebay::Responses::GetOrders)
    end
    # Builds Ebay::Requests#GeteBayOfficialTime
    #
    # Returns Ebay::Responses#GeteBayOfficialTime
    #
    # Official Documentation for GeteBayOfficialTime[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_GeteBayOfficialTime.html]
    def get_ebay_official_time(params = {})
      commit(Ebay::Requests::GeteBayOfficialTime, params, Ebay::Responses::GeteBayOfficialTime)
    end
    # Builds Ebay::Requests#GetSessionID
    #
    # Returns Ebay::Responses#GetSessionID
    #
    # Official Documentation for GetSessionID[http://developer.ebay.com/DevZone/XML/docs/Reference/eBay/io_GetSessionID.html]
    def get_session_id(params = {})
      commit(Ebay::Requests::GetSessionID, params, Ebay::Responses::GetSessionID)
    end
  end
end
