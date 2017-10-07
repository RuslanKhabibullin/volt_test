module TokenClaims
  extend ActiveSupport::Concern

  def claims
    strategy, token = request.headers["Authorization"].split(" ")
    retun nil unless (strategy || "").casecmp("bearer")
    ::JWT::Wrapper.decode(token)
  end
end
