package cl.easygroup.easyfarm.webservices.controllers;


/**
 *
 * @author Luis
 */
 
    import java.security.Principal;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.easygroup.easyfarm.webservices.easyfarmservice.Almacen;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Usuario;
import cl.easygroup.easyfarm.webservices.endpoint.EasyFarmServiceWSPort;
import cl.easygroup.easyfarm.webservices.productor.agregar.AddProductorRequest;
import cl.easygroup.easyfarm.webservices.usuario.agregar.AddUsuarioRequest;

 
@Controller    

public class LoginController {
	@Autowired
	EasyFarmServiceWSPort storeService;	
 
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login(ModelMap model) {
                
		return "login";
 
	}
 
	@RequestMapping(value="/loginfailed.do", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
                List<String> errores = new ArrayList();
                errores.add("Error al autenticar el usuario - Usuario o contrase�a invalidos");
		model.addAttribute("errores",errores);
		return "loginfailed";
 
	}
 
	@RequestMapping(value="/logout.do", method = RequestMethod.GET)
	public String logout(ModelMap model) {
                
		return "login";
 
	}
 
	@RequestMapping(value= "/addUsuario", method = RequestMethod.GET)
	public String addUsuarioGet(Model model,@ModelAttribute("usuario") Usuario usuario){
		
		if (usuario.getIdUsuario() == 0){
			usuario = new Usuario();
			model.addAttribute("usuarioCmd", usuario);
			
			
		}
		//model.addAttribute("tiposAlmacen", storeService.getTiposAlmacen(new GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
		return "addUsuario";
		
	}
	
	
	@RequestMapping(value = "/addUsuario",method = RequestMethod.POST)
	public String addUsuarioPost(Model model,@ModelAttribute("usuario") Usuario usuario){
		
		AddUsuarioRequest request = new AddUsuarioRequest();
		request.setUsuario(usuario);
		model.addAttribute("respuesta",storeService.addUsuario(request));
		
		return "addAlmacenOk";
	}
	@RequestMapping(value= "/addProductor", method = RequestMethod.GET)
	public String addProductorGET(Model model,@ModelAttribute("almacen") Almacen request){
		
		if (request.getIdAlmacen() == 0){
			request = new Almacen();			
			model.addAttribute("almacenCmd", request);

			
		}
		//model.addAttribute("tiposAlmacen", storeService.(new GetTiposAlmacenRequest()).getTiposAlmacen().getTipoAlmacen() );
		return "addAlmacen";
		
	}
	
	

	
	
	@RequestMapping(value = "/addProductor",method = RequestMethod.POST)
	public String addProductorPOST(Model model,@ModelAttribute("almacen") Almacen almacen){
		
		AddProductorRequest request = new AddProductorRequest();
		request.setProducer(almacen);
		model.addAttribute("respuesta",storeService.addProductor(request));
		
		return "addAlmacenOk";
	}
	
}