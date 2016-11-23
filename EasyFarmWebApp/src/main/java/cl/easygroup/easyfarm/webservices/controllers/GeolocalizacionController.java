//package com.yourgroceryservice.controllers;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.company.webservices.yourgrocerystoreservice.AlmacenType;
//import com.company.webservices.yourgrocerystoreservice.almacen.obtener.GetAlmacenRequest;
//import com.company.webservices.yourgrocerystoreservice.almacenes.obtener.GetAlmacenesRequest;
//import com.company.webservices.yourgrocerystoreservice.tiposarticulos.obtener.GetTiposArticulosRequest;
//import com.google.gson.Gson;
//import com.yourgroceryservice.endpoint.YourGroceryServiceWSPort;
//
//@Controller
//@RequestMapping("/managestoreservice/public/")
//public class GeolocalizacionController {
//	@Autowired
//	YourGroceryServiceWSPort storeService;	
//
//	@RequestMapping(value = "/geolocalizacion",method = RequestMethod.GET)
//	public String geolocalizacion(Model model){
//		
//		Map<String,Map<String,String>> mapaAlmacenes = new HashMap<String,Map<String,String>>();
//		
//		
//		for(AlmacenType alm: storeService.getAlmacenes(new GetAlmacenesRequest()).getAlmacenes().getAlmacen()){
//			Map<String,String> mapaDetalle = new HashMap<String,String>();     
//			mapaDetalle.put("direccion", new StringBuilder().append(alm.getUbicacion().getCalle()).append(' ').append(alm.getUbicacion().getNumerocalle()).append(" santiago chile").toString());
//			mapaDetalle.put("id", alm.getIdalmacen().toString());
//			mapaAlmacenes.put(alm.getNombrealmacen(), mapaDetalle); 	
//			
//		}
//		String mapaAlmacenesJson = new Gson().toJson(mapaAlmacenes);
//		model.addAttribute("listaAlmacenesJson", mapaAlmacenesJson);
//		  return "geolocalizacion";
//	}
//
//	@RequestMapping(value = "/almacen",method = RequestMethod.GET)
//	public String verAlmacene(Model model,@RequestParam("idAlmacen") Long idAlmacen){
//		
//		GetAlmacenRequest reqAlmacen = new GetAlmacenRequest();
//		reqAlmacen.setId(idAlmacen.toString());
//		
//		model.addAttribute("almacen", storeService.getAlmacen(reqAlmacen).getAlmacen());
//		
//		
//				
//		model.addAttribute("tiposArticulo", storeService.getTiposArticulos(new GetTiposArticulosRequest()).getTiposArticulos().getTipoArticulo());
//		  return "verAlmacen";
//	}
//}
