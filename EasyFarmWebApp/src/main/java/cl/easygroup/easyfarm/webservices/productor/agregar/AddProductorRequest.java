
package cl.easygroup.easyfarm.webservices.productor.agregar;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
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
 *         &lt;element name="idUsuario" type="{http://www.w3.org/2001/XMLSchema}integer"/>
 *         &lt;element name="producer" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}almacen"/>
 *         &lt;element name="tipoProducer" type="{http://www.w3.org/2001/XMLSchema}integer"/>
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
    "idUsuario",
    "producer",
    "tipoProducer"
})
@XmlRootElement(name = "addProductorRequest")
public class AddProductorRequest {

    @XmlElement(required = true)
    protected BigInteger idUsuario;
    @XmlElement(required = true)
    protected Almacen producer;
    @XmlElement(required = true)
    protected BigInteger tipoProducer;

    /**
     * Obtiene el valor de la propiedad idUsuario.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getIdUsuario() {
        return idUsuario;
    }

    /**
     * Define el valor de la propiedad idUsuario.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setIdUsuario(BigInteger value) {
        this.idUsuario = value;
    }

    /**
     * Obtiene el valor de la propiedad producer.
     * 
     * @return
     *     possible object is
     *     {@link Almacen }
     *     
     */
    public Almacen getProducer() {
        return producer;
    }

    /**
     * Define el valor de la propiedad producer.
     * 
     * @param value
     *     allowed object is
     *     {@link Almacen }
     *     
     */
    public void setProducer(Almacen value) {
        this.producer = value;
    }

    /**
     * Obtiene el valor de la propiedad tipoProducer.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getTipoProducer() {
        return tipoProducer;
    }

    /**
     * Define el valor de la propiedad tipoProducer.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setTipoProducer(BigInteger value) {
        this.tipoProducer = value;
    }

}
