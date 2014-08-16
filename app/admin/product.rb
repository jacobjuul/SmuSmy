ActiveAdmin.register Product do

  
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

  permit_params :quantity

  filter :title
  filter :id
  filter :price
  filter :quantity
  filter :categories

  index do
    column :id
    column :title do |link|
      link_to link.title, admin_product_path(link)
    end
    column :price
    column :quantity
    actions
  end

    


    
  end
