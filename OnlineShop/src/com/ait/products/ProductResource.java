package com.ait.products;


import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/product")
public class ProductResource {

	ProductDAO dao = new ProductDAO();
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Product> findAll() {
		System.out.println("findAll");
		return dao.findAll();
	}
	
	@GET @Path("{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Product findById(@PathParam("id") String id) {
		System.out.println("findById " +id);
		return dao.findById(Integer.parseInt(id));
	}

	

}
