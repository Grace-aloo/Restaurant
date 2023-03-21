class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  def include_pizzas?
    @instance_options[:include_pizzas]
  end

  has_many :pizzas, if: :include_pizzas?
end
