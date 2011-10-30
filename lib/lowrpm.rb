require 'active_resource'
require 'new_relic_api'
require 'lowrpm/version'


module LowRpm

  def initialize(api_key, application_name)
    NewRelicApi.api_key = api_key
    NewRelicApi.reset!
    NewRelicApi::Account.find(:first).applications(:params => {:conditions => {:name => application_name}})
  end
end
