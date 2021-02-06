def calculate_percentage(err_list, threshold):
    errs = list(filter(lambda x: x <= threshold, err_list))
    return len(errs) * 100 /  (len(err_list) * 100)

errors = []

with open("rmse.dat", mode="r") as f:
	while (line := f.readline()):
		errors.append(float(line[:-1]))
		
i = 0
while i <= 10:
    perc = calculate_percentage(errors, i / 10)
    print(i / 10, perc)
    i += 1