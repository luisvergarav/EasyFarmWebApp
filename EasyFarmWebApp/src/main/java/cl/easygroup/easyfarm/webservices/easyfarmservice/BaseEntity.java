
package cl.easygroup.easyfarm.webservices.easyfarmservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para baseEntity complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="baseEntity">
 *   &lt;complexContent>
 *     &lt;extension base="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}entity">
 *       &lt;sequence>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "baseEntity")
@XmlSeeAlso({
    Usuario.class,
    Region.class,
    Direccion.class,
    Actualizacion.class,
    Comuna.class,
    Almacen.class,
    Ubicacion.class,
    Ciudad.class,
    Articulo.class,
    Mensaje.class,
    TipoAlmacen.class,
    Promocion.class,
    UsuarioRole.class,
    TipoMensaje.class,
    TipoArticulo.class
})
public abstract class BaseEntity
    extends Entity
{


}
