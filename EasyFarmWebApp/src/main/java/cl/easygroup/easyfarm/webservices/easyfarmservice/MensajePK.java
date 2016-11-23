
package cl.easygroup.easyfarm.webservices.easyfarmservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para mensajePK complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="mensajePK">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idAlmacen" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="idMensaje" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "mensajePK", propOrder = {
    "idAlmacen",
    "idMensaje"
})
public class MensajePK {

    protected int idAlmacen;
    protected int idMensaje;

    /**
     * Obtiene el valor de la propiedad idAlmacen.
     * 
     */
    public int getIdAlmacen() {
        return idAlmacen;
    }

    /**
     * Define el valor de la propiedad idAlmacen.
     * 
     */
    public void setIdAlmacen(int value) {
        this.idAlmacen = value;
    }

    /**
     * Obtiene el valor de la propiedad idMensaje.
     * 
     */
    public int getIdMensaje() {
        return idMensaje;
    }

    /**
     * Define el valor de la propiedad idMensaje.
     * 
     */
    public void setIdMensaje(int value) {
        this.idMensaje = value;
    }

}
