require 'bigcommerce-oauth-api/api'

module BigcommerceOAuthAPI
  class Client < API

    ##
    # get server time
    def time
      get('time')
    end

    ##
    # get basic store information
    def store_information
      get('store')
    end

    ##
    # Gets the Google Product Search mappings for a product.
    def product_googleproductsearch(product_id, options = {})
      get("products/#{product_id}/googleproductsearch", options)
    end

    with_api_methods :blog_post => { api_module: :post, scope: :self, methods: [:all, :select, :create, :update, :delete], prefix_paths: 'blog', prefix_methods: 'blog'},
                     :blog_tag => { api_module: :tag, scope: :self, methods: [:all], prefix_paths: 'blog', prefix_methods: 'blog'},
                     :brand => { api_module: :brand, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :category => { api_module: :category, scope: :self, methods: [:all, :select, :create, :update, :delete]},
                     :customer => { api_module: :customer, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :customer_address => { api_module: :address, scope: :customer, methods: [:all, :select, :create, :update, :delete]},
                     :customer_group => { api_module: :customer_group, scope: :self, methods: [:all, :select, :create, :update, :delete]},
                     :geography_country => { api_module: :country, scope: :self, methods: [:all, :select, :count]},
                     :geography_state => { api_module: :state, scope: :country, methods: [:all, :select, :count]},
                     :marketing_coupons => { api_module: :coupon, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :option => { api_module: :option, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :option_set => { api_module: :option_set, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :option_set_option => { api_module: :option, scope: :option_set, methods: [:all, :select, :create, :update, :delete]},
                     :option_value => { api_module: :value, scope: :option, methods: [:all, :select, :create, :update, :delete]},
                     :order_status => { api_module: :order_status, scope: :self, methods: [:all, :select]},
                     :order => { api_module: :order, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :order_coupon => { api_module: :coupon, scope: :order, methods: [:all, :select]},
                     :order_message => { api_module: :message, scope: :order, methods: [:all, :select]},
                     :order_product => { api_module: :product, scope: :order, methods: [:all, :select, :count]},
                     :order_shipment => { api_module: :shipment, scope: :order, methods: [:all, :select, :create, :update, :delete]},
                     :order_shipping_address => { api_module: :shipping_address, scope: :order, methods: [:all, :select]},
                     :order_taxes => { api_module: :tax, scope: :order, methods: [:all, :select]},
                     :payment_method => { api_module: :method, scope: :self, methods: [:all], prefix_paths: 'payments', prefix_methods: 'payment'},
                     :product => { api_module: :product, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :product_custom_field => { api_module: :custom_field, scope: :product, methods: [:all, :select, :create, :update, :delete]},
                     :product_discount_rule => { api_module: :discount_rule, scope: :product, methods: [:all, :select, :create, :update, :delete, :count]},
                     :product_configurable_field => { api_module: :configurable_field, scope: :product, methods: [:all, :select, :delete, :count]},
                     :product_image => { api_module: :image, scope: :product, methods: [:all, :select, :create, :update, :delete, :count]},
                     :product_option => { api_module: :option, scope: :product, methods: [:all, :select]},
                     :product_review => { api_module: :review, scope: :product, methods: [:all]},
                     :product_rule => { api_module: :rule, scope: :product, methods: [:all, :select, :create, :update, :delete, :count]},
                     :product_video => { api_module: :video, scope: :product, methods: [:all, :select, :create, :update, :delete, :count]},
                     :product_sku => { api_module: :sku, scope: :product, methods: [:all, :select, :create, :update, :delete, :count]},
                     :redirect => { api_module: :redirect, scope: :self, methods: [:all, :select, :create, :update, :delete, :count]},
                     :shipping_method => { api_module: :method, scope: :self, methods: [:all, :select], prefix_paths: 'shipping', prefix_methods: 'shipping'},
                     :tax_class => { api_module: :tax_class, scope: :self, methods: [:all, :select]},
                     :web_hook => { api_module: :hook, scope: :self, methods: [:all, :select, :create, :update, :delete], legacy: false }

    # @!method blog_posts(options = {})
    # @param [Hash] options the filters for the posts
    # gets a list of posts

    # @!method blog_post(id, options = {})
    # @param [Integer] id the identifier for the post
    # gets the post with the given id

    # @!method create_blog_post(options = {})
    # @param [Hash] options the attributes for the post
    # creates a post with the given attributes

    # @!method update_blog_post(id, options = {})
    # @param [Integer] id the identifier for the post
    # @param [Hash] options the attributes for the post
    # update the attributes of the post with the given id

    # @!method delete_blog_post(id)
    # @param [Integer] id the identifier for the post
    # deletes the post with the given id

    # @!method blog_tags(options = {})
    # @param [Hash] options the filters for the tags
    # gets a list of tags

    # @!method brands(options = {})
    # @param [Hash] options the filters for the brands
    # gets a list of brands

    # @!method brand(id, options = {})
    # @param [Integer] id the identifier for the brand
    # gets the brand with the given id

    # @!method create_brand(options = {})
    # @param [Hash] options the attributes for the brand
    # creates a brand with the given attributes

    # @!method update_brand(id, options = {})
    # @param [Integer] id the identifier for the brand
    # @param [Hash] options the attributes for the brand
    # update the attributes of the brand with the given id

    # @!method delete_brand(id)
    # @param [Integer] id the identifier for the brand
    # deletes the brand with the given id

    # @!method brands_count(options = {})
    # @param [Hash] options the filters for the brands
    # returns the number of brands

    # @!method categories(options = {})
    # @param [Hash] options the filters for the categories
    # gets a list of categories

    # @!method category(id, options = {})
    # @param [Integer] id the identifier for the category
    # gets the category with the given id

    # @!method create_category(options = {})
    # @param [Hash] options the attributes for the category
    # creates a category with the given attributes

    # @!method update_category(id, options = {})
    # @param [Integer] id the identifier for the category
    # @param [Hash] options the attributes for the category
    # update the attributes of the category with the given id

    # @!method delete_category(id)
    # @param [Integer] id the identifier for the category
    # deletes the category with the given id

    # @!method customers(options = {})
    # @param [Hash] options the filters for the customers
    # gets a list of customers

    # @!method customer(id, options = {})
    # @param [Integer] id the identifier for the customer
    # gets the customer with the given id

    # @!method create_customer(options = {})
    # @param [Hash] options the attributes for the customer
    # creates a customer with the given attributes

    # @!method update_customer(id, options = {})
    # @param [Integer] id the identifier for the customer
    # @param [Hash] options the attributes for the customer
    # update the attributes of the customer with the given id

    # @!method delete_customer(id)
    # @param [Integer] id the identifier for the customer
    # deletes the customer with the given id

    # @!method customers_count(options = {})
    # @param [Hash] options the filters for the customers
    # returns the number of customers

    # @!method customer_addresses(customer_id, options = {})
    # @param [Integer] customer_id the identifier for the customer
    # @param [Hash] options the filters for the addresses
    # gets a list of addresses for the given customer

    # @!method customer_address(customer_id, id, options = {})
    # @param [Integer] id the identifier for the address
    # @param [Integer] customer_id the identifier for the customer
    # gets the address with the given id for the given customer

    # @!method create_customer_address(customer_id, options = {})
    # @param [Integer] customer_id the identifier for the customer
    # @param [Hash] options the attributes for the address
    # creates a address with the given attributes for the given customer

    # @!method update_customer_address(customer_id, id, options = {})
    # @param [Integer] id the identifier for the address
    # @param [Integer] customer_id the identifier for the customer
    # @param [Hash] options the attributes for the address
    # update the attributes of the address with the given id for the given customer

    # @!method delete_customer_address(customer_id, id)
    # @param [Integer] id the identifier for the address
    # @param [Integer] customer_id the identifier for the customer
    # deletes the address with the given id for the given customer

    # @!method customer_groups(options = {})
    # @param [Hash] options the filters for the customer_groups
    # gets a list of customer_groups

    # @!method customer_group(id, options = {})
    # @param [Integer] id the identifier for the customer_group
    # gets the customer_group with the given id

    # @!method create_customer_group(options = {})
    # @param [Hash] options the attributes for the customer_group
    # creates a customer_group with the given attributes

    # @!method update_customer_group(id, options = {})
    # @param [Integer] id the identifier for the customer_group
    # @param [Hash] options the attributes for the customer_group
    # update the attributes of the customer_group with the given id

    # @!method delete_customer_group(id)
    # @param [Integer] id the identifier for the customer_group
    # deletes the customer_group with the given id

    # @!method countries(options = {})
    # @param [Hash] options the filters for the countries
    # gets a list of countries

    # @!method country(id, options = {})
    # @param [Integer] id the identifier for the country
    # gets the country with the given id

    # @!method countries_count(options = {})
    # @param [Hash] options the filters for the countries
    # returns the number of countries

    # @!method country_states(country_id, options = {})
    # @param [Integer] country_id the identifier for the country
    # @param [Hash] options the filters for the states
    # gets a list of states for the given country

    # @!method country_state(country_id, id, options = {})
    # @param [Integer] id the identifier for the state
    # @param [Integer] country_id the identifier for the country
    # gets the state with the given id for the given country

    # @!method country_states_count(country_id, options = {})
    # @param [Integer] country_id the identifier for the country
    # @param [Hash] options the filters for the states
    # returns the number of states for the given country

    # @!method coupons(options = {})
    # @param [Hash] options the filters for the coupons
    # gets a list of coupons

    # @!method coupon(id, options = {})
    # @param [Integer] id the identifier for the coupon
    # gets the coupon with the given id

    # @!method create_coupon(options = {})
    # @param [Hash] options the attributes for the coupon
    # creates a coupon with the given attributes

    # @!method update_coupon(id, options = {})
    # @param [Integer] id the identifier for the coupon
    # @param [Hash] options the attributes for the coupon
    # update the attributes of the coupon with the given id

    # @!method delete_coupon(id)
    # @param [Integer] id the identifier for the coupon
    # deletes the coupon with the given id

    # @!method coupons_count(options = {})
    # @param [Hash] options the filters for the coupons
    # returns the number of coupons

    # @!method options(options = {})
    # @param [Hash] options the filters for the options
    # gets a list of options

    # @!method option(id, options = {})
    # @param [Integer] id the identifier for the option
    # gets the option with the given id

    # @!method create_option(options = {})
    # @param [Hash] options the attributes for the option
    # creates a option with the given attributes

    # @!method update_option(id, options = {})
    # @param [Integer] id the identifier for the option
    # @param [Hash] options the attributes for the option
    # update the attributes of the option with the given id

    # @!method delete_option(id)
    # @param [Integer] id the identifier for the option
    # deletes the option with the given id

    # @!method options_count(options = {})
    # @param [Hash] options the filters for the options
    # returns the number of options

    # @!method option_sets(options = {})
    # @param [Hash] options the filters for the option_sets
    # gets a list of option_sets

    # @!method option_set(id, options = {})
    # @param [Integer] id the identifier for the option_set
    # gets the option_set with the given id

    # @!method create_option_set(options = {})
    # @param [Hash] options the attributes for the option_set
    # creates a option_set with the given attributes

    # @!method update_option_set(id, options = {})
    # @param [Integer] id the identifier for the option_set
    # @param [Hash] options the attributes for the option_set
    # update the attributes of the option_set with the given id

    # @!method delete_option_set(id)
    # @param [Integer] id the identifier for the option_set
    # deletes the option_set with the given id

    # @!method option_sets_count(options = {})
    # @param [Hash] options the filters for the option_sets
    # returns the number of option_sets

    # @!method option_set_options(option_set_id, options = {})
    # @param [Integer] option_set_id the identifier for the option_set
    # @param [Hash] options the filters for the options
    # gets a list of options for the given option_set

    # @!method option_set_option(option_set_id, id, options = {})
    # @param [Integer] id the identifier for the option
    # @param [Integer] option_set_id the identifier for the option_set
    # gets the option with the given id for the given option_set

    # @!method create_option_set_option(option_set_id, options = {})
    # @param [Integer] option_set_id the identifier for the option_set
    # @param [Hash] options the attributes for the option
    # creates a option with the given attributes for the given option_set

    # @!method update_option_set_option(option_set_id, id, options = {})
    # @param [Integer] id the identifier for the option
    # @param [Integer] option_set_id the identifier for the option_set
    # @param [Hash] options the attributes for the option
    # update the attributes of the option with the given id for the given option_set

    # @!method delete_option_set_option(option_set_id, id)
    # @param [Integer] id the identifier for the option
    # @param [Integer] option_set_id the identifier for the option_set
    # deletes the option with the given id for the given option_set

    # @!method option_values(option_id, options = {})
    # @param [Integer] option_id the identifier for the option
    # @param [Hash] options the filters for the values
    # gets a list of values for the given option

    # @!method option_value(option_id, id, options = {})
    # @param [Integer] id the identifier for the value
    # @param [Integer] option_id the identifier for the option
    # gets the value with the given id for the given option

    # @!method create_option_value(option_id, options = {})
    # @param [Integer] option_id the identifier for the option
    # @param [Hash] options the attributes for the value
    # creates a value with the given attributes for the given option

    # @!method update_option_value(option_id, id, options = {})
    # @param [Integer] id the identifier for the value
    # @param [Integer] option_id the identifier for the option
    # @param [Hash] options the attributes for the value
    # update the attributes of the value with the given id for the given option

    # @!method delete_option_value(option_id, id)
    # @param [Integer] id the identifier for the value
    # @param [Integer] option_id the identifier for the option
    # deletes the value with the given id for the given option

    # @!method order_statuses(options = {})
    # @param [Hash] options the filters for the order_statuses
    # gets a list of order_statuses

    # @!method order_status(id, options = {})
    # @param [Integer] id the identifier for the order_status
    # gets the order_status with the given id

    # @!method orders(options = {})
    # @param [Hash] options the filters for the orders
    # gets a list of orders

    # @!method order(id, options = {})
    # @param [Integer] id the identifier for the order
    # gets the order with the given id

    # @!method create_order(options = {})
    # @param [Hash] options the attributes for the order
    # creates a order with the given attributes

    # @!method update_order(id, options = {})
    # @param [Integer] id the identifier for the order
    # @param [Hash] options the attributes for the order
    # update the attributes of the order with the given id

    # @!method delete_order(id)
    # @param [Integer] id the identifier for the order
    # deletes the order with the given id

    # @!method orders_count(options = {})
    # @param [Hash] options the filters for the orders
    # returns the number of orders

    # @!method order_coupons(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the coupons
    # gets a list of coupons for the given order

    # @!method order_coupon(order_id, id, options = {})
    # @param [Integer] id the identifier for the coupon
    # @param [Integer] order_id the identifier for the order
    # gets the coupon with the given id for the given order

    # @!method order_messages(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the messages
    # gets a list of messages for the given order

    # @!method order_message(order_id, id, options = {})
    # @param [Integer] id the identifier for the message
    # @param [Integer] order_id the identifier for the order
    # gets the message with the given id for the given order

    # @!method order_products(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the products
    # gets a list of products for the given order

    # @!method order_product(order_id, id, options = {})
    # @param [Integer] id the identifier for the product
    # @param [Integer] order_id the identifier for the order
    # gets the product with the given id for the given order

    # @!method order_products_count(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the products
    # returns the number of products for the given order

    # @!method order_shipments(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the shipments
    # gets a list of shipments for the given order

    # @!method order_shipment(order_id, id, options = {})
    # @param [Integer] id the identifier for the shipment
    # @param [Integer] order_id the identifier for the order
    # gets the shipment with the given id for the given order

    # @!method create_order_shipment(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the attributes for the shipment
    # creates a shipment with the given attributes for the given order

    # @!method update_order_shipment(order_id, id, options = {})
    # @param [Integer] id the identifier for the shipment
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the attributes for the shipment
    # update the attributes of the shipment with the given id for the given order

    # @!method delete_order_shipment(order_id, id)
    # @param [Integer] id the identifier for the shipment
    # @param [Integer] order_id the identifier for the order
    # deletes the shipment with the given id for the given order

    # @!method order_shipping_addresses(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the shipping_addresses
    # gets a list of shipping_addresses for the given order

    # @!method order_shipping_address(order_id, id, options = {})
    # @param [Integer] id the identifier for the shipping_address
    # @param [Integer] order_id the identifier for the order
    # gets the shipping_address with the given id for the given order

    # @!method order_taxes(order_id, options = {})
    # @param [Integer] order_id the identifier for the order
    # @param [Hash] options the filters for the taxes
    # gets a list of taxes for the given order

    # @!method order_tax(order_id, id, options = {})
    # @param [Integer] id the identifier for the tax
    # @param [Integer] order_id the identifier for the order
    # gets the tax with the given id for the given order

    # @!method payment_methods(options = {})
    # @param [Hash] options the filters for the methods
    # gets a list of methods

    # @!method products(options = {})
    # @param [Hash] options the filters for the products
    # gets a list of products

    # @!method product(id, options = {})
    # @param [Integer] id the identifier for the product
    # gets the product with the given id

    # @!method create_product(options = {})
    # @param [Hash] options the attributes for the product
    # creates a product with the given attributes

    # @!method update_product(id, options = {})
    # @param [Integer] id the identifier for the product
    # @param [Hash] options the attributes for the product
    # update the attributes of the product with the given id

    # @!method delete_product(id)
    # @param [Integer] id the identifier for the product
    # deletes the product with the given id

    # @!method products_count(options = {})
    # @param [Hash] options the filters for the products
    # returns the number of products

    # @!method product_custom_fields(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the custom_fields
    # gets a list of custom_fields for the given product

    # @!method product_custom_field(product_id, id, options = {})
    # @param [Integer] id the identifier for the custom_field
    # @param [Integer] product_id the identifier for the product
    # gets the custom_field with the given id for the given product

    # @!method create_product_custom_field(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the custom_field
    # creates a custom_field with the given attributes for the given product

    # @!method update_product_custom_field(product_id, id, options = {})
    # @param [Integer] id the identifier for the custom_field
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the custom_field
    # update the attributes of the custom_field with the given id for the given product

    # @!method delete_product_custom_field(product_id, id)
    # @param [Integer] id the identifier for the custom_field
    # @param [Integer] product_id the identifier for the product
    # deletes the custom_field with the given id for the given product

    # @!method product_discount_rules(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the discount_rules
    # gets a list of discount_rules for the given product

    # @!method product_discount_rule(product_id, id, options = {})
    # @param [Integer] id the identifier for the discount_rule
    # @param [Integer] product_id the identifier for the product
    # gets the discount_rule with the given id for the given product

    # @!method create_product_discount_rule(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the discount_rule
    # creates a discount_rule with the given attributes for the given product

    # @!method update_product_discount_rule(product_id, id, options = {})
    # @param [Integer] id the identifier for the discount_rule
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the discount_rule
    # update the attributes of the discount_rule with the given id for the given product

    # @!method delete_product_discount_rule(product_id, id)
    # @param [Integer] id the identifier for the discount_rule
    # @param [Integer] product_id the identifier for the product
    # deletes the discount_rule with the given id for the given product

    # @!method product_discount_rules_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the discount_rules
    # returns the number of discount_rules for the given product

    # @!method product_configurable_fields(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the configurable_fields
    # gets a list of configurable_fields for the given product

    # @!method product_configurable_field(product_id, id, options = {})
    # @param [Integer] id the identifier for the configurable_field
    # @param [Integer] product_id the identifier for the product
    # gets the configurable_field with the given id for the given product

    # @!method delete_product_configurable_field(product_id, id)
    # @param [Integer] id the identifier for the configurable_field
    # @param [Integer] product_id the identifier for the product
    # deletes the configurable_field with the given id for the given product

    # @!method product_configurable_fields_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the configurable_fields
    # returns the number of configurable_fields for the given product

    # @!method product_images(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the images
    # gets a list of images for the given product

    # @!method product_image(product_id, id, options = {})
    # @param [Integer] id the identifier for the image
    # @param [Integer] product_id the identifier for the product
    # gets the image with the given id for the given product

    # @!method create_product_image(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the image
    # creates a image with the given attributes for the given product

    # @!method update_product_image(product_id, id, options = {})
    # @param [Integer] id the identifier for the image
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the image
    # update the attributes of the image with the given id for the given product

    # @!method delete_product_image(product_id, id)
    # @param [Integer] id the identifier for the image
    # @param [Integer] product_id the identifier for the product
    # deletes the image with the given id for the given product

    # @!method product_images_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the images
    # returns the number of images for the given product

    # @!method product_options(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the options
    # gets a list of options for the given product

    # @!method product_option(product_id, id, options = {})
    # @param [Integer] id the identifier for the option
    # @param [Integer] product_id the identifier for the product
    # gets the option with the given id for the given product

    # @!method product_reviews(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the reviews
    # gets a list of reviews for the given product

    # @!method product_rules(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the rules
    # gets a list of rules for the given product

    # @!method product_rule(product_id, id, options = {})
    # @param [Integer] id the identifier for the rule
    # @param [Integer] product_id the identifier for the product
    # gets the rule with the given id for the given product

    # @!method create_product_rule(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the rule
    # creates a rule with the given attributes for the given product

    # @!method update_product_rule(product_id, id, options = {})
    # @param [Integer] id the identifier for the rule
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the rule
    # update the attributes of the rule with the given id for the given product

    # @!method delete_product_rule(product_id, id)
    # @param [Integer] id the identifier for the rule
    # @param [Integer] product_id the identifier for the product
    # deletes the rule with the given id for the given product

    # @!method product_rules_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the rules
    # returns the number of rules for the given product

    # @!method product_videos(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the videos
    # gets a list of videos for the given product

    # @!method product_video(product_id, id, options = {})
    # @param [Integer] id the identifier for the video
    # @param [Integer] product_id the identifier for the product
    # gets the video with the given id for the given product

    # @!method create_product_video(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the video
    # creates a video with the given attributes for the given product

    # @!method update_product_video(product_id, id, options = {})
    # @param [Integer] id the identifier for the video
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the video
    # update the attributes of the video with the given id for the given product

    # @!method delete_product_video(product_id, id)
    # @param [Integer] id the identifier for the video
    # @param [Integer] product_id the identifier for the product
    # deletes the video with the given id for the given product

    # @!method product_videos_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the videos
    # returns the number of videos for the given product

    # @!method product_skus(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the skus
    # gets a list of skus for the given product

    # @!method product_sku(product_id, id, options = {})
    # @param [Integer] id the identifier for the sku
    # @param [Integer] product_id the identifier for the product
    # gets the sku with the given id for the given product

    # @!method create_product_sku(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the sku
    # creates a sku with the given attributes for the given product

    # @!method update_product_sku(product_id, id, options = {})
    # @param [Integer] id the identifier for the sku
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the attributes for the sku
    # update the attributes of the sku with the given id for the given product

    # @!method delete_product_sku(product_id, id)
    # @param [Integer] id the identifier for the sku
    # @param [Integer] product_id the identifier for the product
    # deletes the sku with the given id for the given product

    # @!method product_skus_count(product_id, options = {})
    # @param [Integer] product_id the identifier for the product
    # @param [Hash] options the filters for the skus
    # returns the number of skus for the given product

    # @!method redirects(options = {})
    # @param [Hash] options the filters for the redirects
    # gets a list of redirects

    # @!method redirect(id, options = {})
    # @param [Integer] id the identifier for the redirect
    # gets the redirect with the given id

    # @!method create_redirect(options = {})
    # @param [Hash] options the attributes for the redirect
    # creates a redirect with the given attributes

    # @!method update_redirect(id, options = {})
    # @param [Integer] id the identifier for the redirect
    # @param [Hash] options the attributes for the redirect
    # update the attributes of the redirect with the given id

    # @!method delete_redirect(id)
    # @param [Integer] id the identifier for the redirect
    # deletes the redirect with the given id

    # @!method redirects_count(options = {})
    # @param [Hash] options the filters for the redirects
    # returns the number of redirects

    # @!method shipping_methods(options = {})
    # @param [Hash] options the filters for the methods
    # gets a list of methods

    # @!method shipping_method(id, options = {})
    # @param [Integer] id the identifier for the method
    # gets the method with the given id

    # @!method tax_classes(options = {})
    # @param [Hash] options the filters for the tax_classes
    # gets a list of tax_classes

    # @!method tax_class(id, options = {})
    # @param [Integer] id the identifier for the tax_class
    # gets the tax_class with the given id

    # @!method hooks(options = {})
    # @param [Hash] options the filters for the hooks
    # gets a list of hooks

    # @!method hook(id, options = {})
    # @param [Integer] id the identifier for the hook
    # gets the hook with the given id

    # @!method create_hook(options = {})
    # @param [Hash] options the attributes for the hook
    # creates a hook with the given attributes

    # @!method update_hook(id, options = {})
    # @param [Integer] id the identifier for the hook
    # @param [Hash] options the attributes for the hook
    # update the attributes of the hook with the given id

    # @!method delete_hook(id)
    # @param [Integer] id the identifier for the hook
    # deletes the hook with the given id

  end
end