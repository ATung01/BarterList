class User < ApplicationRecord
  has_many :transactions
  has_many :items

  def items
    Item.where(user_id: self.id)
  end

  def initiate_transaction(item1, item2)
    Transaction.create(user_id: self.id, buyer_id: item2.user_id, user_item_id: item1.id, buyer_item_id: item2.id)
  end

  def accept_transaction(transID)
    @acceptedT = Transaction.find_by(id: transID)
    dummy = @acceptedT.user_item_id
    @acceptedT.user_item_id = @acceptedT.buyer_item_id
    @acceptedT.buyer_item_id = dummy
    @acceptedT.accepted = true
    @acceptedT.save
  end

  def show_unaccepted_offers()
    Transaction.where(user_id: self.id, accepted: false)
  end
  def show_accepted_offers()
    Transaction.where(user_id: self.id, accepted: true)
  end


end
