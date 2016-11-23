
package cl.easygroup.easyfarm.webservices.easyfarmservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para articuloPK complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="articuloPK">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idAlmacen" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="idArticulo" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "articuloPK", propOrder = {
    "idAlmacen",
    "idArticulo"
})
public class ArticuloPK {

    protected int idAlmacen;
    protected int idArticulo;

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
     * Obtiene el valor de la propiedad idArticulo.
     * 
     */
    public int getIdArticulo() {
        return idArticulo;
    }

    /**
     * Define el valor de la propiedad idArticulo.
     * 
     */
    public void setIdArticulo(int value) {
        this.idArticulo = value;
    }

}
