package cl.easygroup.easyfarm.webservices.controllers;

import java.math.BigInteger;
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

import com.google.gson.Gson;

import javax.annotation.Resource;

import cl.easygroup.easyfarm.webservices.articulo.agregar.AddArticuloRequest;
import cl.easygroup.easyfarm.webservices.articulo.converters.ArticuloTypeConverter;
import cl.easygroup.easyfarm.webservices.comunas.obtener.GetComunasRequest;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Almacen;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Articulo;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Promocion;
import cl.easygroup.easyfarm.webservices.easyfarmservice.PromocionPK;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Region;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Ubicacion;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Usuario;
import cl.easygroup.easyfarm.webservices.endpoint.EasyFarmServiceWSPort;
import cl.easygroup.easyfarm.webservices.productor.agregar.AddProductorRequest;
import cl.easygroup.easyfarm.webservices.productor.filtro.obtener.GetProductorFiltroRequest;
import cl.easygroup.easyfarm.webservices.productor.obtener.GetProductorRequest;
import cl.easygroup.easyfarm.webservices.productores.obtener.GetProductoresRequest;
import cl.easygroup.easyfarm.webservices.promocion.agregar.AddPromocionRequest;
import cl.easygroup.easyfarm.webservices.promocion.obtener.GetPromocionRequest;
import cl.easygroup.easyfarm.webservices.regiones.obtener.GetRegionesRequest;
import cl.easygroup.easyfarm.webservices.usuario.agregar.AddUsuarioRequest;
import cl.easygroup.easyfarm.webservices.usuario.obtener.GetUsuarioRequest;

@Controller
@RequestMapping("/managestoreservice/private/")
public class ManageStoreService {

	
	
	@Autowired
	Usuario usuario;
	//
	@Autowired
	Almacen almacen;

	@Autowired
	EasyFarmServiceWSPort storeService;

	@RequestMapping(value = "/addUsuario", method = RequestMethod.GET)
	public String addUsuarioGet(Model model, @ModelAttribute("usuario") Usuario usuario) {

		if (usuario.getIdUsuario() == 0) {
			usuario = new Usuario();
			model.addAttribute("usuarioCmd", usuario);

		}
		// model.addAttribute("tiposAlmacen", storeService.getTiposAlmacen(new
		// GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
		return "addUsuario";

	}

	@RequestMapping(value = "/addUsuario", method = RequestMethod.POST)
	public String addUsuarioPost(Model model, @ModelAttribute("usuario") Usuario usuario) {

		AddUsuarioRequest request = new AddUsuarioRequest();
		request.setUsuario(usuario);
		model.addAttribute("respuesta", storeService.addUsuario(request));

		List<String> errores = new ArrayList<String>();
			errores.add("Usuario Creado con Exito!");
			errores.add("Cree Ahora su Agricola!");
		
		return "redirect:home";
	}

	@RequestMapping(value = "/addProductor", method = RequestMethod.GET)
	public String addProductorGET(Model model, @ModelAttribute("almacen") Almacen request) {

		if (request.getIdAlmacen() == 0) {
			request = new Almacen();
			model.addAttribute("almacenCmd", request);

		}
		// model.addAttribute("tiposAlmacen", storeService.(new
		// GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
		GetComunasRequest reqComunas = new GetComunasRequest();
		 model.addAttribute("comunas",this.storeService.getComunas(reqComunas).getComuna());
		 model.addAttribute("regiones",this.storeService.getRegiones((new GetRegionesRequest())).getRegion());
		return "addAlmacen";

	}

	@RequestMapping(value = "/addProductor", method = RequestMethod.POST)
	public String addProductorPOST(Model model, @ModelAttribute("almacen") Almacen almacen) {

		AddProductorRequest request = new AddProductorRequest();
		request.setIdUsuario(BigInteger.valueOf(this.usuario.getIdUsuario()));
		request.setTipoProducer(BigInteger.valueOf(1));
		request.setProducer(almacen);
		boolean resp = storeService.addProductor(request).isRespuesta();

		
		List<String> errores = new ArrayList<String>();
		String retorno = "home";
		if (resp){
			errores.add("Productor Creado con Exito!");			
			retorno = "redirect:home";
		}
		else {
			errores.add("Creacion Fallida del Productor!");
			retorno =  "redirect:addProductor";
		}
		model.addAttribute("errores", errores);
		return retorno;
	}

	@RequestMapping(value = "/addArticulo", method = RequestMethod.GET)
	public String addArticuloGET(Model model, @ModelAttribute("articulo") Articulo request) {

		if (request.getId() == null) {
			request = new Articulo();
			model.addAttribute("articuloCmd", request);

		}
		// model.addAttribute("tiposAlmacen", storeService.(new
		// GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
		return "addArticulo";

	}

	@RequestMapping(value = "/addArticulo", method = RequestMethod.POST)
	public String addArticuloPOST(Model model, @ModelAttribute("articulo") Articulo articulo) {

		AddArticuloRequest request = new AddArticuloRequest();

		request.setIdProductor(BigInteger.valueOf(this.almacen.getIdAlmacen()));
		request.setIdTipoArticulo(BigInteger.valueOf(1));
		request.setArticulo(articulo);

		boolean resp = storeService.addArticulo(request).isRespuesta();

		List<String> errores = new ArrayList<String>();

		if (resp)
			errores.add("Articulo Creado con Exito!");
		else
			errores.add("Creacion de la promocion Fallida!");

		model.addAttribute("errores", errores);

		return "resultado";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(javax.xml.datatype.XMLGregorianCalendar.class, new ArticuloTypeConverter());
	}

	// @InitBinder
	// public void initBinder(WebDataBinder binder) {
	// binder.registerCustomEditor(javax.xml.datatype.XMLGregorianCalendar.class,
	// new ArticuloTypeEditor());
	// }
	//
	@RequestMapping(value = "/addPromocion", method = RequestMethod.GET)
	public String addPromocionGet(Model model, @ModelAttribute("promocion") Promocion promocion) {

		if (promocion.getId() == null) {
			promocion = new Promocion();
			model.addAttribute("promocionCmd", promocion);

		}

		return "addPromocion";
	}

	@RequestMapping(value = "/verPromocion", method = RequestMethod.GET)
	public String verPromocionGet(Model model, @ModelAttribute("idPromocion") Integer idPromocion) {

		if (idPromocion == null) {
			Promocion promocion = new Promocion();
			model.addAttribute("promocionCmd", promocion);

		} else {

			GetPromocionRequest request = new GetPromocionRequest();

			request.setIdProductor(BigInteger.valueOf(this.almacen.getIdAlmacen()));
			request.setIdPromocion(BigInteger.valueOf(idPromocion));

			// GetAlmacenRequest requestAlmacen = new GetAlmacenRequest();

			// requestAlmacen.setId(this.almacen.getIdalmacen().toString());

			Promocion promocionTemp = storeService.getPromocion(request).getPromocion();
			model.addAttribute("promocionCmd", promocionTemp);
			model.addAttribute("articulos", this.almacen.getArticulos());
		}

		return "verPromocion";
	}

	@RequestMapping(value = "/verPromocion", method = RequestMethod.POST)
	public String verPromocionPost(Model model, @ModelAttribute("promocionCmd") Promocion promocion) {

		AddPromocionRequest addPromocionRequest = new AddPromocionRequest();

		addPromocionRequest.setIdProductor(BigInteger.valueOf(promocion.getId().getIdAlmacen()));
		addPromocionRequest.setPromocion(promocion);

		boolean resp = storeService.addPromocion(addPromocionRequest).isRespuesta();

		List<String> errores = new ArrayList<String>();

		if (resp)
			errores.add("promocion actualizada con exito!");
		else
			errores.add("actualizacion de la promocion fallida!");

		model.addAttribute("errores", errores);
		return "resultado";

	}
	//
	// @RequestMapping(value= "/addAlmacen", method = RequestMethod.GET)
	// public String addAlmacenGET(Model model,@ModelAttribute("almacen")
	// AlmacenType almacen){
	//
	// if (almacen.getIdalmacen() == null){
	// almacen = new AlmacenType();
	// model.addAttribute("almacenCmd", almacen);
	//
	//
	// }
	// model.addAttribute("tiposAlmacen", storeService.getTiposAlmacen(new
	// GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
	// return "addAlmacen";
	//
	// }
	//

	// @RequestMapping(value = "/addAlmacen",method = RequestMethod.POST)
	// public String addAlmacenPOST(Model model,@ModelAttribute("almacen")
	// AlmacenType almacen){
	//
	// AddAlmacenRequest request = new AddAlmacenRequest();
	// request.setAlmacen(almacen);
	// model.addAttribute("respuesta",storeService.addAlmacen(request));
	//
	// return "addAlmacenOk";
	// }

	@RequestMapping(value = "/addPromocion", method = RequestMethod.POST)
	public String addPromocionPOST(Model model, @ModelAttribute("promocion") Promocion promocion) {

		AddPromocionRequest request = new AddPromocionRequest();
		PromocionPK pPk = new PromocionPK();

		pPk.setIdPromocion(0);
		promocion.setId(pPk);
		request.setPromocion(promocion);
		request.setIdProductor(BigInteger.valueOf(this.almacen.getIdAlmacen()));

		boolean resp = storeService.addPromocion(request).isRespuesta();
		List<String> errores = new ArrayList<String>();

		if (resp)
			errores.add("Promocion Creada con Exito!");
		else
			errores.add("Creacion de la promocion Fallida!");

		model.addAttribute("errores", errores);
		return "resultado";
	}

	// @RequestMapping(value = "/listaalmacenes",method = RequestMethod.GET)
	// public String getAlmacenes(Model model){
	//
	// model.addAttribute("almacenes", storeService.getAlmacenes(new
	// GetAlmacenesRequest()).getAlmacenes().getAlmacen());
	// return "Almacenes";
	// }

	 @RequestMapping(value = "/productor",method = RequestMethod.GET)
	 public String verProductor(Model model,@RequestParam("idProductor") Long
	 idProductor){
	
	 GetProductorRequest reqAlmacen = new GetProductorRequest();
	 reqAlmacen.setIdProductor(BigInteger.valueOf(idProductor));
	
	 model.addAttribute("almacen",
	 storeService.getProductor(reqAlmacen).getProductor());
	
	
	
	 
	 return "almacen";
	 }
	 
	 
	 @RequestMapping(value = "/buscarArticulo",method = RequestMethod.POST)
	 public String verProductor(Model model,@ModelAttribute("ubicacionCmd") Ubicacion ubicacion){
	
	 Map<String, Map<String, String>> mapaAlmacenes = new HashMap<String, Map<String, String>>();

	 
	 GetProductorFiltroRequest request = new GetProductorFiltroRequest();
	 request.setComuna(ubicacion.getComuna());
	 request.setProducto(ubicacion.getCiudad());
	 request.setRegion(ubicacion.getRegion());
	 
	 List<Almacen> lista = this.storeService.getProductorFiltro(request).getProductores().getProductor();
	 
	 for (Almacen alm : lista) {
			Map<String, String> mapaDetalle = new HashMap<String, String>();
			mapaDetalle.put("direccion", new StringBuilder().append(alm.getUbicacion().getCalle()).append(' ')
					.append(alm.getUbicacion().getNumeroCalle()).append(' ').append(alm.getUbicacion().getComuna()).append(' ').append(alm.getUbicacion().getRegion()).append(" chile").toString());
			mapaDetalle.put("id", String.valueOf(alm.getIdAlmacen()));
			mapaAlmacenes.put(alm.getNombreAlmacen(), mapaDetalle);

		}
		String mapaAlmacenesJson = new Gson().toJson(mapaAlmacenes);
		model.addAttribute("listaAlmacenesJson", mapaAlmacenesJson);
		

		Ubicacion ubicacionEmpty = new Ubicacion();
		
		 GetComunasRequest reqComunas = new GetComunasRequest();
		 model.addAttribute("comunas",this.storeService.getComunas(reqComunas).getComuna());
		 model.addAttribute("regiones",this.storeService.getRegiones((new GetRegionesRequest())).getRegion());
		 model.addAttribute("ubicacionCmd",ubicacionEmpty);
		return "geolocalizacion";

	
	 }

	// @RequestMapping(value= "/addArticulo", method = RequestMethod.GET)
	// public String addArticuloGET(Model model){
	//
	//
	// AddArticuloRequest cargaArticulo = new AddArticuloRequest();
	// cargaArticulo.setIdAlmacen(this.almacen.getIdalmacen().toString());
	//
	// model.addAttribute("cargaArticuloCmd", cargaArticulo);
	// model.addAttribute("tiposArticulos", storeService.getTiposArticulos( new
	// GetTiposArticulosRequest()));
	//
	//
	// return "addArticulo";
	//
	// }
	//
	// @RequestMapping(value = "/addArticulo",method = RequestMethod.POST)
	// public String addArticuloPOST(Model
	// model,@ModelAttribute("cargaArticuloCmd") AddArticuloRequest carga){
	//
	//
	// boolean resp = storeService.addArticulo(carga).isRespuesta();
	//
	//
	//
	//
	// List<String> errores = new ArrayList<String>();
	//
	// if (resp) errores.add("Articulo Creado con Exito!");
	// else
	// errores.add("Creacion de Articulo Fallida!");
	//
	// model.addAttribute("errores",errores);
	// return "resultado";
	//
	//
	//
	// }
	//

	@RequestMapping(value = "/geolocalizacion", method = RequestMethod.GET)
	public String geolocalizacion(Model model) {

		Map<String, Map<String, String>> mapaAlmacenes = new HashMap<String, Map<String, String>>();

		for (Almacen alm : storeService.getProductores(new GetProductoresRequest()).getProductores().getProductor()) {
			Map<String, String> mapaDetalle = new HashMap<String, String>();
			mapaDetalle.put("direccion", new StringBuilder().append(alm.getUbicacion().getCalle()).append(' ')
					.append(alm.getUbicacion().getNumeroCalle()).append(' ').append(alm.getUbicacion().getComuna()).append(' ').append(alm.getUbicacion().getRegion()).append(" chile").toString());
			mapaDetalle.put("id", String.valueOf(alm.getIdAlmacen()));
			mapaAlmacenes.put(alm.getNombreAlmacen(), mapaDetalle);

		}
	
		
		 Ubicacion ubicacion = new Ubicacion();
		 GetComunasRequest reqComunas = new GetComunasRequest();
		 model.addAttribute("comunas",this.storeService.getComunas(reqComunas).getComuna());
		 model.addAttribute("regiones",this.storeService.getRegiones((new GetRegionesRequest())).getRegion());
		 model.addAttribute("ubicacionCmd",ubicacion);
			String mapaAlmacenesJson = new Gson().toJson(mapaAlmacenes);
			model.addAttribute("listaAlmacenesJson", mapaAlmacenesJson);
		return "geolocalizacion";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model, Principal principal) {

		this.almacen.setIdAlmacen(0);
		
		String name = principal.getName();

		GetUsuarioRequest getUsuarioRequest = new GetUsuarioRequest();

		Usuario usuarioTemp = new Usuario();

		usuarioTemp.setNick(name);

		getUsuarioRequest.setIdUsuario(usuarioTemp);

		Usuario usuario = this.storeService.getUsuario(getUsuarioRequest).getUsuario();
		
		
		if (usuario.getNick().equals(name)) {
			this.usuario = usuario;			
			GetProductoresRequest req = new GetProductoresRequest();
			
			for (Almacen alm : this.storeService.getProductores(req).getProductores().getProductor()){
				if (alm.getUsuario().getNick().equals(this.usuario.getNick()))
					this.almacen = alm;
				
			}
		}

		// GetAlmacenRequest reqAlmacen = new GetAlmacenRequest();
		// reqAlmacen.setId( this.almacen.getIdalmacen().toString());

		// model.addAttribute("almacen",
		// storeService.getAlmacen(reqAlmacen).getAlmacen());

		model.addAttribute("almacen", this.almacen);

		// model.addAttribute("tiposArticulo",
		// storeService.getTiposArticulos(new
		// GetTiposArticulosRequest()).getTiposArticulos().getTipoArticulo());
		if (this.almacen.getIdAlmacen() == 0)
			return "redirect:addProductor";
		else
		return "home";
	}

	@RequestMapping(value = "/busqueda", method = RequestMethod.GET)
	public String home(Model model) {

		return "buscarCategoria";
	}
	
	@RequestMapping(value = "/listadoArticulos", method = RequestMethod.GET)
	public String listadoArticulos(Model model) {

		model.addAttribute("listadoArticulos", this.almacen.getArticulos());
		return "articulos";
	}

	@RequestMapping(value = "/listadoPromociones", method = RequestMethod.GET)
	public String listadoPromociones(Model model) {

		model.addAttribute("listadoPromociones", this.almacen.getPromocions());
		return "promociones";
	}
}
