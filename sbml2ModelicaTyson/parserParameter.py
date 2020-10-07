import re
PARAMETER_RE = r"\s+parameter Real \w+ = \d+\.\d+.*"
def parserParameter(filename):
    stream = open(filename, mode="r", encoding="utf-8")
    start, end = False, False 
    while (line := stream.readline()):
        print(line)
        if re.match(PARAMETER_RE, line): start = True
        else: end = True
        if start:
            print(line)

if __name__ == "__main__":
    parserParameter("Reactions.mo")
