class V1::Dashboard::LoadController < ApplicationController
  def products
    products = ActiveModel::ArraySerializer.new(Product.all.to_a, each_serializer: ProductSerializer).serializable_array
    render json: { data: products }, status: :ok
  end

  def orders
    render json: { data: {} }, status: :ok
  end

  def tables
    tables = ActiveModel::ArraySerializer.new(Table.all.to_a, each_serializer: TableSerializer).serializable_array
    render json: { data: tables }, status: :ok
  end
end
