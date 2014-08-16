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

  filter :id
  filter :name
  filter :address
  filter :email
  filter :pay_type
  filter :created_at

  index do
    column :id
    column :name
    column :address
    column :email
    column :pay_type
    column :created_at
    actions
  end





  sidebar 'Products ordered (line_items)', :only => :show do
    table_for LineItem.joins(:order).where(:order_id => order.id) do |t|
      
      
      t.column("Product Name") do |item|
         number = item.quantity
        link_to number.to_s + ' x ' + item.product.title, admin_product_path(item.product)
      end
      
      
      t.column("Total Price") do |item|        
        @total = (item.quantity * item.product.price)
      end

      
      t.column("Order Total") do |item|
       #insert code here
       
      end    

          
    end
  end

  
  
end
