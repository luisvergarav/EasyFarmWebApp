
package cl.easygroup.easyfarm.webservices.promocion.obtener;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


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
 *         &lt;element name="idPromocion" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="idProductor" type="{http://www.w3.org/2001/XMLSchema}integer"/>
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
    "idPromocion",
    "idProductor"
})
@XmlRootElement(name = "getPromocionRequest")
public class GetPromocionRequest {

    @XmlElement(required = true)
    protected BigInteger idPromocion;
    @XmlElement(required = true)
    protected BigInteger idProductor;

    /**
     * Obtiene el valor de la propiedad idPromocion.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getIdPromocion() {
        return idPromocion;
    }

    /**
     * Define el valor de la propiedad idPromocion.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setIdPromocion(BigInteger value) {
        this.idPromocion = value;
    }

    /**
     * Obtiene el valor de la propiedad idProductor.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getIdProductor() {
        return idProductor;
    }

    /**
     * Define el valor de la propiedad idProductor.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setIdProductor(BigInteger value) {
        this.idProductor = value;
    }

}
