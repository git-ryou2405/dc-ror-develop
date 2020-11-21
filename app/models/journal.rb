class Journal < ApplicationRecord
  enum send_type: {
    commission_fee: 1, # 業務委託報酬
    tipping: 2, # 投げ銭
    issued_coin: 8, # コイン発行
    collected_coin: 9, # コイン回収
  }
end
