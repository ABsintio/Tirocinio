package parser.files;

import java.util.HashMap;
import java.util.ArrayList;
import biomodel.math.equation.iEquation;

/**
 * Ogni istanza di ClassElmtFile conterrà tutte le informazioni su un singolo parsing di un 
 * file class_elmt. Ogni istanza della classe conterrà: 
 * 
 * 1. Gli input del file, ognuno di essi connesso al file dal quale viene preso, in modo da 
 *	  facilitare il mapping in fase di costruzione delle ODE.

 * 2. Le equazioni iniziali del file. Notiamo che le vere equazioni iniziali sono solamente 
 *    quelle contenute nella sezione "initial equation", in quanto tutte le inizializzazioni 
 *    fatte nelle altre sezioni verranno effettuate ad ogni time step successivo.
 *
 */
public class ClassElmtFile {
	public final String nome;						// Nome del file parsato
	public final String modelObjectName;			// Nome che compare nel file che collega tutti i componenti
	private final HashMap<String, String> inputs;	// Coppia (input, fileName)
	private final ArrayList<iEquation> iEqs; 		// Lista di equazioni iniziali
	public ClassElmtFile(
		String name, String mon,
		HashMap<String, String> ins,
		ArrayList<iEquation> ieqns
	) {
		this.modelObjectName = mon;
		this.nome = name;
		this.inputs = ins;
		this.iEqs = ieqns;
	}
	public HashMap<String, String> getIntpus(){ return this.inputs; }
	public String getFileFromInput(String in){
		if (!this.inputs.containsKey(in)) return null;
		return this.inputs.get(in);
	}
	public ArrayList<String> getInputsByFilename(String fN) {
		if (!this.inputs.containsValue(fN)) return null;
		ArrayList<String> inputsByFn = new ArrayList<>();
		for (String in: this.inputs.keySet()) {
			if (this.inputs.get(in).equals(fN)) inputsByFn.add(in);
		}
		return inputsByFn;
	}
	public ArrayList<iEquation> getIEqs(){ return this.iEqs; }
}
