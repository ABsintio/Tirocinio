package parser.files;

import java.util.HashMap;
import java.util.ArrayList;
import biomodel.math.equation.iEquation;
import biomodel.math.equation.aEquation;
import biomodel.math.equation.ODE;

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
 * 3. Le equazioni di assegnamento del file. Queste comprendono non solo quelle parsate da 
 * 	  ParserEquation ma anche quelle di ParseAlgorithm. Saranno necessarie per la corretta
 * 	  formulazione delle ODE. Queste saranno divise in tre categorie: aEqs, ODEEqs e aAlg
 * 	  parsati rispettivamente da ParserEquation e ParserAlgorithm
 */
public class ClassElmtFile {
	public final String nome;						// Nome del file parsato
	private final HashMap<String, String> inputs;	// Coppia (input, fileName)
	private final ArrayList<iEquation> iEqs; 		// Lista di equazioni iniziali parsate da ParserEquation
	private final ArrayList<aEquation> aEqs;		// Lista delle equazioni parsate da ParserEquation
	private final ArrayList<ODE>	 ODEEqs;		// Lista delle equazioni differenziali parsate da ParserEquation
	private final ArrayList<aEquation> aAlg;		// Lista delle equazioni parsate da ParserAlgorithm
	public ClassElmtFile(
		String 					name,
		HashMap<String, String> ins,
		ArrayList<iEquation>    ieqns,
		ArrayList<aEquation> 	aeqns,
		ArrayList<ODE>	     	oeqns,
		ArrayList<aEquation> 	aalg
	) {
		this.nome   		 = name;
		this.inputs 		 = ins;
		this.iEqs 			 = ieqns;
		this.aEqs 	   		 = aeqns;
		this.ODEEqs 		 = oeqns;
		this.aAlg 			 = aalg;
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
	public ArrayList<iEquation> getIEqs(){ return this.iEqs;   }
	public ArrayList<aEquation> getAEqs(){ return this.aEqs;   }
	public ArrayList<ODE>		getODEs(){ return this.ODEEqs; }
	public ArrayList<aEquation> getAAlg(){ return this.aAlg;   }
}