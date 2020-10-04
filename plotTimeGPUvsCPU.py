import matplotlib.pyplot as plt

def parseFile(filename:str) -> dict:
	stream = open(filename, mode="r", encoding="utf-8")
	fileRows = list(map(
		lambda x: tuple(map(
			lambda y: float(y.strip())/1000,
			x.split("-"))),
		stream.readlines()[1:])
	)
	return fileRows
	
	
t = parseFile("spentTime.txt")
GPUTime, CPUTime = [], []
for x, y in t:
	GPUTime.append(x)
	CPUTime.append(y)

numSim = [1, 10, 100, 1000, 10000]

plt.plot(numSim, CPUTime, marker="o", label="CPUTime")
plt.plot(numSim, GPUTime, marker="x", label="GPUTime")
plt.legend(loc="upper left")
plt.show()
