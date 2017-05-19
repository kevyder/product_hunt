module ProductsHelper
  def form_title
    @product.new_record? ? 'New Product' : 'Edit Product'
  end
end
