class Journal < ApplicationRecord
  enum send_type: {
    fee: 1, # 業務委託報酬
    tipping: 2, # 投げ銭
    issuance: 8, # コイン発行
    cashing: 9, # コイン回収
  }
end
