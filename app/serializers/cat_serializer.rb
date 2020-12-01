class CatSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :owner

  def owner
    {owner_id: self.object.product.id, 
     owner_name: self.object.product.name,
     owner_image: self.object.product.image}
  end 
end
