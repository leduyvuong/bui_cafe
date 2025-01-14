class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers::AssetTagHelper
  attributes :id, :name, :price, :image

  def price
    object.price.to_f
  end

  def image
    return nil unless object.image.attached?

    Rails.application.routes.url_helpers.rails_blob_url(object.image, only_path: true)
  end
end
