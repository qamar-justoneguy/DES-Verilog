## Author: Muhammad Qamar Raza
# Generates verilog files with s-box modules corresponding to the s-box
# entries in the s_box_i.txt files.

if __name__ == "__main__":
    filename_base = "s_box_"
    rom_name = "memory"

    for i in range(1, 9):
        i_text = f"module s_box_{i} (input [5:0] index, output reg [3:0] sub_val);"
        i_text += "\n\n(* rom_style = \"block\" *)"
        i_text += "\nwire [1:0] row;"
        i_text += "\nwire [3:0] column;"
        i_text += "\nassign row[1:0] = {index[5], index[0]};"
        i_text += "\nassign column[3:0] = index[4:1];"
        # i_text += "\nassign sub_val = memory[row * 16 + column];\n\n"
        filename = filename_base + str(i)

        with open(filename + ".txt") as s_box_file:
            out_file = open("sboxes/" + filename + ".v", "w") # Create a verilog file for writing.
            out_file.write(i_text)
            
            s_array = str(s_box_file.read())
            s_array = s_array.split()
            out_file.write("\n\nalways @*\n")
            out_file.write("\tcase ({row, column})\n")
            for i in range(64):
                entry = s_array[i]
                out_file.write(f"\t\t6'b{(bin(i)[2:]).rjust(6, "0")}: sub_val = 4'd{entry};\n")
            out_file.write("\n\t\tdefault: sub_val = 4'd0;\n")
            out_file.write("\tendcase\n")
            out_file.write("endmodule\n")

        # input("Press any key to continue to the next file... ")
            