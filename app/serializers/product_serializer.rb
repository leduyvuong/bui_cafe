class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  def price
    object.price.to_f
  end
end
