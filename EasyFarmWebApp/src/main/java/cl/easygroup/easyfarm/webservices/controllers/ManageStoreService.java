package cl.easygroup.easyfarm.webservices.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;


import cl.easygroup.easyfarm.webservices.easyfarmservice.Usuario;
import cl.easygroup.easyfarm.webservices.endpoint.EasyFarmServiceWSPort;



@Controller	
@RequestMapping("/managestoreservice/private/")
public class ManageStoreService {

//	@Autowired
//	UsuarioType usuario;
//	
//	@Autowired
//	AlmacenType almacen;
	
	@Autowired
	EasyFarmServiceWSPort storeService;		
	
//	@InitBinder
//    public void initBinder(WebDataBinder binder) {
//        binder.registerCustomEditor(javax.xml.datatype.XMLGregorianCalendar.class, new ArticuloTypeEditor());
//    } 
//	
//	@RequestMapping(value="/addPromocion", method = RequestMethod.GET)
//	public String addPromocionGet(Model model,@ModelAttribute("promocion") PromocionType promocion){
//		
//		if (promocion.getId().getIdpromocion() == null){
//			promocion = new PromocionType();
//			model.addAttribute("promocionCmd", promocion);
//			
//		}
//		
//		
//		return "addPromocion";
//	}
//	
////	
//	@RequestMapping(value="/verPromocion", method = RequestMethod.GET)
//	public String addPromocionGet(Model model,@ModelAttribute("idPromocion") Integer idPromocion){
//		
//		if ( idPromocion == null){
//			PromocionType promocion = new PromocionType();
//			model.addAttribute("promocionCmd", promocion);
//			
//		}else{
//			
//			GetPromocionRequest request = new GetPromocionRequest();
//			
//			request.setIdAlmacen(this.almacen.getIdalmacen().toString());
//			request.setIdPromocion(idPromocion.toString());
//			
//			GetAlmacenRequest requestAlmacen = new GetAlmacenRequest();
//			
//			requestAlmacen.setId(this.almacen.getIdalmacen().toString());
//			
//			model.addAttribute("promocionCmd", storeService.getPromocion(request).getPromocion());
//			model.addAttribute("articulos",storeService.getAlmacen(requestAlmacen).getAlmacen().getArticulos());
//		}
//		
//		
//		return "verPromocion";
//	}
	
//	@requestmapping(value= "/verpromocion", method = requestmethod.post)	
//	public string verpromocionpost(model model,@modelattribute("promocioncmd") promociontype promociontype){
//		
//		addpromocionrequest addpromocionrequest = new addpromocionrequest();
//		
//		addpromocionrequest.setidalmacen(promociontype.getid().getalmacenidalmacen().tostring());
//		addpromocionrequest.setpromocion(promociontype);
//		
//		boolean resp = storeservice.addpromocion(addpromocionrequest).isrespuesta();
//		
//		
//		
//		list<string> errores = new arraylist<string>();
//		
//		if (resp) 		errores.add("promocion actualizada con exito!");
//		else 
//			errores.add("actualizacion de la promocion fallida!");
//		
//		model.addattribute("errores",errores);
//		return "resultado";
//		
//
//	}
//	
//	@RequestMapping(value= "/addAlmacen", method = RequestMethod.GET)
//	public String addAlmacenGET(Model model,@ModelAttribute("almacen") AlmacenType almacen){
//		
//		if (almacen.getIdalmacen() == null){
//			almacen = new AlmacenType();
//			model.addAttribute("almacenCmd", almacen);
//			
//			
//		}
//		model.addAttribute("tiposAlmacen", storeService.getTiposAlmacen(new GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
//		return "addAlmacen";
//		
//	}
//	
	

	
	
//	@RequestMapping(value = "/addAlmacen",method = RequestMethod.POST)
//	public String addAlmacenPOST(Model model,@ModelAttribute("almacen") AlmacenType almacen){
//		
//		AddAlmacenRequest request = new AddAlmacenRequest();
//		request.setAlmacen(almacen);
//		model.addAttribute("respuesta",storeService.addAlmacen(request));
//		
//		return "addAlmacenOk";
//	}
	
//	@RequestMapping (value = "/addPromocion",method = RequestMethod.POST)
//	public String addPromocionPOST(Model model,@ModelAttribute("promocion") PromocionType promocion){
//		
//		AddPromocionRequest request = new AddPromocionRequest();
//		request.setPromocion(promocion);
//		request.setIdAlmacen(this.almacen.getIdalmacen().toString());
//		boolean resp = storeService.addPromocion(request).isRespuesta();
//		List<String> errores = new ArrayList<String>();
//		
//		if (resp) 		errores.add("Promocion Creada con Exito!");
//		else 
//			errores.add("Creacion de la promocion Fallida!");
//		
//		model.addAttribute("errores",errores);
//		return "resultado";
//	}
	
//	@RequestMapping(value = "/listaalmacenes",method = RequestMethod.GET)
//	public String getAlmacenes(Model model){
//		
//		model.addAttribute("almacenes", storeService.getAlmacenes(new GetAlmacenesRequest()).getAlmacenes().getAlmacen());
//		  return "Almacenes";
//	}
	
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
//		  return "almacen";
//	}
//	
//	@RequestMapping(value= "/addArticulo", method = RequestMethod.GET)
//	public String addArticuloGET(Model model){
//		
//		
//			AddArticuloRequest cargaArticulo = new AddArticuloRequest();
//			cargaArticulo.setIdAlmacen(this.almacen.getIdalmacen().toString());
//			
//			model.addAttribute("cargaArticuloCmd", cargaArticulo);
//			model.addAttribute("tiposArticulos", storeService.getTiposArticulos( new GetTiposArticulosRequest()));
//		
//		
//		return "addArticulo";
//		
//	}
//	
//	@RequestMapping(value = "/addArticulo",method = RequestMethod.POST)
//	public String addArticuloPOST(Model model,@ModelAttribute("cargaArticuloCmd") AddArticuloRequest carga){
//		
//		
//		boolean resp = storeService.addArticulo(carga).isRespuesta();
//		
//		
//		
//		
//		List<String> errores = new ArrayList<String>();
//		
//		if (resp) 		errores.add("Articulo Creado con Exito!");
//		else 
//			errores.add("Creacion de Articulo Fallida!");
//		
//		model.addAttribute("errores",errores);
//		return "resultado";
//		
//		
//
//	}
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
	
//	@RequestMapping(value = "/home",method = RequestMethod.GET)
//	public String home(Model model, Principal principal){
//		
//		 String name = principal.getName();
//		
//		GetUsuariosRequest getUsuariosRequest = new GetUsuariosRequest();
//		for (UsuarioType usuario : this.storeService.getUsuarios(getUsuariosRequest).getUsuarios()){
//			
//			if (usuario.getNick().equals(name)){				
//				this.usuario = usuario;
//				this.almacen = this.usuario.getAlmacenes().get(0); 
//				
//			}
//			
//			
//		}				
		
//		GetAlmacenRequest reqAlmacen = new GetAlmacenRequest();
//		reqAlmacen.setId( this.almacen.getIdalmacen().toString());
//		
//		model.addAttribute("almacen", storeService.getAlmacen(reqAlmacen).getAlmacen());
//								
//		
//		model.addAttribute("tiposArticulo", storeService.getTiposArticulos(new GetTiposArticulosRequest()).getTiposArticulos().getTipoArticulo());
//		  return "almacen";
//	}
	
	
}
