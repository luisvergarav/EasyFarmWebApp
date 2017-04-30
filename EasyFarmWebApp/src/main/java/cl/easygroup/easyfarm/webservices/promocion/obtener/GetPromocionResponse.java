
package cl.easygroup.easyfarm.webservices.promocion.obtener;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Promocion;


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
 *         &lt;element name="promocion" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}promocion"/>
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
    "promocion"
})
@XmlRootElement(name = "getPromocionResponse")
public class GetPromocionResponse {

    @XmlElement(required = true)
    protected Promocion promocion;

    /**
     * Obtiene el valor de la propiedad promocion.
     * 
     * @return
     *     possible object is
     *     {@link Promocion }
     *     
     */
    public Promocion getPromocion() {
        return promocion;
    }

    /**
     * Define el valor de la propiedad promocion.
     * 
     * @param value
     *     allowed object is
     *     {@link Promocion }
     *     
     */
    public void setPromocion(Promocion value) {
        this.promocion = value;
    }

}
