class ApplicationController < ActionController::Base
  def str_simpl str
    result=str.gsub(/\s+/,' ')
    result.gsub!(/^\s/,'')
    result.gsub!(/\s$/,'')
    return nil unless result.size>0
    return result
  end
end
