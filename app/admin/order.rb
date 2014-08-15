ActiveAdmin.register Order do

  

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


  sidebar 'Products ordered (line_items)', :only => :show do
    table_for LineItem.joins(:order).where(:order_id => order.id) do |t|
      t.column("Name") do |item|
        link_to item.product.title, admin_product_path(item.product)
      end
      
      t.column("Quantity") { |item| item.quantity }
      t.column("Total Price") do |item|
        @total = item.quantity * item.product.price
      end
      
      t.column("Order Total") do |item|
       #insert code here
      end    

          
    end
  end

  
  
end
