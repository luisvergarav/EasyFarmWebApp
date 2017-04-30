package cl.easygroup.easyfarm.webservices.articulo.converters;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

public class ArticuloTypeConverter extends PropertyEditorSupport {
	public void setAsText(String text) {

	try {
		GregorianCalendar gCalendar = new GregorianCalendar();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		Date fechaActualizacion = sdf.parse(text);
		
		gCalendar.setTime(fechaActualizacion);
		
		XMLGregorianCalendar xmlGC;
		
			xmlGC = DatatypeFactory.newInstance().newXMLGregorianCalendar(gCalendar);
			
			setValue(xmlGC);
		} catch (DatatypeConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        
    }
}
