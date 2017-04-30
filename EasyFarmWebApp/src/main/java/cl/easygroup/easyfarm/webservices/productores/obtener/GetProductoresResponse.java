
package cl.easygroup.easyfarm.webservices.productores.obtener;

import java.util.ArrayList;
import java.util.List;
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
 *         &lt;element name="productores">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;sequence>
 *                   &lt;element name="productor" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}almacen" maxOccurs="unbounded" minOccurs="0"/>
 *                 &lt;/sequence>
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
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
    "productores"
})
@XmlRootElement(name = "getProductoresResponse")
public class GetProductoresResponse {

    @XmlElement(required = true)
    protected GetProductoresResponse.Productores productores;

    /**
     * Obtiene el valor de la propiedad productores.
     * 
     * @return
     *     possible object is
     *     {@link GetProductoresResponse.Productores }
     *     
     */
    public GetProductoresResponse.Productores getProductores() {
        return productores;
    }

    /**
     * Define el valor de la propiedad productores.
     * 
     * @param value
     *     allowed object is
     *     {@link GetProductoresResponse.Productores }
     *     
     */
    public void setProductores(GetProductoresResponse.Productores value) {
        this.productores = value;
    }


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
     *         &lt;element name="productor" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}almacen" maxOccurs="unbounded" minOccurs="0"/>
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
    public static class Productores {

        protected List<Almacen> productor;

        /**
         * Gets the value of the productor property.
         * 
         * <p>
         * This accessor method returns a reference to the live list,
         * not a snapshot. Therefore any modification you make to the
         * returned list will be present inside the JAXB object.
         * This is why there is not a <CODE>set</CODE> method for the productor property.
         * 
         * <p>
         * For example, to add a new item, do as follows:
         * <pre>
         *    getProductor().add(newItem);
         * </pre>
         * 
         * 
         * <p>
         * Objects of the following type(s) are allowed in the list
         * {@link Almacen }
         * 
         * 
         */
        public List<Almacen> getProductor() {
            if (productor == null) {
                productor = new ArrayList<Almacen>();
            }
            return this.productor;
        }

    }

}
