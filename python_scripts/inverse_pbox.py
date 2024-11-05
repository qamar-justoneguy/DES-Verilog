## Author: Muhammad Qamar Raza
# Since the final p-box is the inverse of the initial p-box, I have used the initial p-box i/o pairs to 
# calculate the final p-box, because typing it out is hard :)

permArray = []

with open("initial_pbox.txt") as pFile:
    while pFile:
        temp = pFile.readline().split()
        if not temp:
            break
        permArray.append([int(temp[0]), int(temp[1])])

    print(permArray)

permArray.sort(key = lambda x: x[1])
print(permArray)
print()
print()

for inp, out in permArray:
    print("assign DOUT[" + str(out) + "]", "=", "DIN[" + str(inp) + "];") 



