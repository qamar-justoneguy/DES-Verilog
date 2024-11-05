
if __name__ == "__main__":
    filename = "s_box_1"
    module_name = "memory"

    with open(filename + ".txt") as s_box_1:
        array = str(s_box_1.read())
        array = array.split()
        print("reg [0:3] " + module_name + " [0:63] = {", end="")
        for i in range(4):
            print("{", end="")
            for j in range(16):
                entry = array[j + i * 16]
                if (j < 15):
                    print("4'd" + entry + ", ", end="")
                else:
                    print("4'd" + entry, end="")
            if (i < 3):
                print("},")
            else:
                print("}};")
            