## Author: Muhammad Qamar Raza
# Generates verilog files with s-box modules corresponding to the s-box
# entries in the s_box_i.txt files.

if __name__ == "__main__":
    filename = "compression_pbox"
    rom_name = "memory"

    entries = []

    i_text = f"module compression_pbox (input [0:55] DIN, output [0:47] round_key);\n\n"

    with open("compression_entries.txt") as p_box_file:
        out_file = open(filename + ".v", "w") # Create a verilog file for writing.
        out_file.write(i_text)

        p_array = str(p_box_file.read())
        p_array = p_array.split()
        for i in range(48):
            entry = p_array[i]
            out_file.write(f"\tassign round_key[{i}] = DIN[{entry}];\n")
        out_file.write("\nendmodule\n")

        # input("Press any key to continue to the next file... ")
            