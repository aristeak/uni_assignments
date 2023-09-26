import os

os.chdir("C:\\Users\\user\\Desktop\\uni\\6\\project")

files = os.listdir()

for file in files:
    if not file.endswith(".txt"):
        files.remove(file)

for file in files:
    with open(file, "r+") as results:
        lines: list[str] = []
        line = results.readline()
        while line:
            if line.startswith("Result") or line.startswith("Time") or line.startswith("No"):
                lines.append(line)
            line = results.readline()
        table = dict()
        for i in range(0, len(lines), 2):
            key = lines[i].removeprefix("Result for target =").removesuffix('\n')
            value = lines[i+1].removeprefix("Result found in").removesuffix("seconds\n") if lines[i+1].startswith("Result") else lines[i+1].removesuffix('\n')
            table[key] = value
        
        with open("formated_"+file, "w+") as formated_file:
            formated_file.write("target, time\n")
            for key in table.keys():
                try:
                    formated_file.write(f"{key}, {round(float(table[key]), 3)}\n")
                except:
                    formated_file.write(f"{key}, {table[key]}\n")    