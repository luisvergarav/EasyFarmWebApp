
package cl.easygroup.easyfarm.webservices.comunas.obtener;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import cl.easygroup.easyfarm.webservices.easyfarmservice.Comuna;

 
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
 *         &lt;element name="comuna" type="{http://cl/easygroup/easyfarm/webservices/easyfarmservice}comuna" maxOccurs="unbounded" minOccurs="0"/>
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
    "comuna"
})
@XmlRootElement(name = "getComunasResponse")
public class GetComunasResponse {

    protected List<Comuna> comuna;

    /**
     * Gets the value of the comuna property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the comuna property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getComuna().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Comuna }
     * 
     * 
     */
    public List<Comuna> getComuna() {
        if (comuna == null) {
            comuna = new ArrayList<Comuna>();
        }
        return this.comuna;
    }

}
