class Order < ActiveRecord::Base
	has_one :product
	 def Order.createOrder(clientNit, productCode)
	 cliente = Clients.where(:nit => clientNit).first
	 producto = Products.where(:code => productCode).first
	 if (primera_cita == nil || producto == nil)
	    puts "No existe este codigo en la base de datos"
	    return false
	 else
	    orden = Orders.new
	    order.code = productCode
	    order.date = Time.now
	    order.nit = clientNit
	    order.amount = 1
	    valor = order.save
	    return true
	 end
    end
end
