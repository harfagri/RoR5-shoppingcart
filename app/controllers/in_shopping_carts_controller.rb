class InShoppingCartsController < ApplicationController

	def create
		#va el carro de compra
		in_shopping_cart = InShoppingCart.new(product_id: params[:product_id], shopping_cart: @shopping_cart)
		#in_shopping_cart = InShoppingCart.new(shopping_cart: @shopping_cart)
		if in_shopping_cart.save
			redirect_to "/carrito", notice: "producto guardado en carro de compras"
		else
			redirect_to products_path(id: params[:product_id]), notice: "no pudo guardar producto en el carro de compras"
		end
	end

	def destroy
		#elimina el carro de compra
		@in_shopping_cart = InShoppingCart.find(params[:id])
		@in_shopping_cart.destroy

		redirect_to carrito_path

	end

end
