class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :products

  def products
    ActiveModel::ArraySerializer.new(object.products, each_serializer: ProductSerializer).serializable_array
  end
end
