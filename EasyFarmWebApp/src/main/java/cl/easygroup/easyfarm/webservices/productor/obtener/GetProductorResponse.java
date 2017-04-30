
package cl.easygroup.easyfarm.webservices.productor.obtener;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Almacen;


/**
 * <p>Clase Java para anonymous complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="productor" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}almacen" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "productor"
})
@XmlRootElement(name = "getProductorResponse")
public class GetProductorResponse {

    protected Almacen productor;

    /**
     * Obtiene el valor de la propiedad productor.
     * 
     * @return
     *     possible object is
     *     {@link Almacen }
     *     
     */
    public Almacen getProductor() {
        return productor;
    }

    /**
     * Define el valor de la propiedad productor.
     * 
     * @param value
     *     allowed object is
     *     {@link Almacen }
     *     
     */
    public void setProductor(Almacen value) {
        this.productor = value;
    }

}
