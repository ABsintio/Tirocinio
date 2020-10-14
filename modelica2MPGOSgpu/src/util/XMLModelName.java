package util;

import java.io.File;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * Classe che prende in input il file xml (che descrive il modello biologico, quindi SBML)
 * per estrarre da esso l'id del modello il quale esso è utilizzato per creare il file 
 * principale da sbml2Modelica. Serve in quanto contiene tutti i collegamenti necessari a formattare
 * correttamente il sistema di equazioni differenziali ordinarie. 
 */
public class XMLModelName {
    public static String getModelName(String fileName) 
    throws ParserConfigurationException, SAXException, IOException {
        // Prendiamo il Document Builder
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        // Carichiamo l'XML, lo parsiamo e ritorniamo un istanza di Document.
        Document doc = builder.parse(new File(fileName));
        NodeList nodeList = doc.getDocumentElement().getChildNodes();
        Element el = (Element) nodeList.item(1);
        return el.getAttribute("id");
    }

    public static void main(String[] args) {
        try {
            System.out.println(XMLModelName.getModelName("/home/yorunoomo/Scrivania/Tirocinio/models/BIOMD0000000005_url.xml"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}