import re 


class DAG:
    """ Rappresenta un grafo diretto e aciclico """
    def __init__(self, init_equations, MPGOSparams_dict):
        self.dipendence_dag = DAG.getgraph(init_equations, MPGOSparams_dict)
        

    @staticmethod
    def getgraph(init_equations, MPGOSparams_dict):
        """ Crea un DAG che rappresenta un grafo delle dipendenze tra le diverse equazioni iniziali. """
        graph = {x.split("=")[0].strip(): [] for x in init_equations}
        for initeq in init_equations:
            lhs, rhs = initeq.split("=")
            involved_vars = re.finditer(r"(ACC|sPAR|X)\[[0-9]+\]", rhs.strip())
            for var in involved_vars:
                MPGOSname = var.group()
                ivalue_param = MPGOSparams_dict[MPGOSname].init
                if ivalue_param is None or not re.match(r"\d+\.*\d*", ivalue_param):
                    graph[lhs.strip()].append(MPGOSname)
        return graph


    def dfs_ric(self, v, vis):
        """ algoritmo DFS a partire da v modificato per l'ordinamento topologico """
        lista = [] # lista temporanea per la ricerca WIP
        for adj in self.dipendence_dag[v]:
            if not vis[adj]:
                vis[adj] = 1
                lista += self.dfs_ric(adj, vis) # update della lista
        # Una volta che la visita è terminata allora
        # metto il contatore a 2 e inserisco il nodo
        # nella lista temporanea per l'ordinamento
        vis[v] = 2
        lista.append(v)
        return lista

    
    def topological_sort(self):
        """ Algoritmo per l'ordinamento topologico del DAG tramite utilizzo della DFS """
        vis   = {_ : 0 for _ in self.dipendence_dag.keys()}
        nodes = list(self.dipendence_dag.keys()) 
        ordinamento = []
        start_node = list(self.dipendence_dag.keys())[0]
        vis[start_node] = 1
        # Come è stato già detto dal momento che lo
        # ordinamento esiste solo per i DAG allora
        # potrebbero esistere componenti fortemente
        # connesse, allora devo per forza di cosa
        # far partire la ricerca da tutti quei nodi
        # da cui ancora non è partita e quindi non
        # sono stati visitati e la cui ricerca non è
        # ancora finita.
        for node in nodes:
            if vis[node] != 2:
                ordinamento += self.dfs_ric(node, vis)
        return ordinamento # Non invertiamo l'ordinamento come si dovrebbe fare
