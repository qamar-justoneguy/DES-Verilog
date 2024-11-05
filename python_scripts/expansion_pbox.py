## Author: Muhammad Qamar Raza
## Script that prints out the assignment orperations required in the expansion p-box in the format of verilog code.

i_os, i_oe = [0, 5]
index = 0

def gen_6bit_block(in_name, out_name, i_start, i_end, mod):
    global i_os, i_oe, index

    print("assign " + in_name + "[" + str(index) + "] = " + out_name + "[" + str((i_start - 1) % mod) + "];")
    index += 1

    for i in range(4):
        print("assign " + in_name + "[" + str(index) + "] = " + out_name + "[" + str((i_start + i) % mod) + "];")
        index += 1
        
    print("assign " + in_name + "[" + str(index) + "] = " + out_name + "[" + str((i_end + 1) % mod) + "];")
    index += 1

    i_os = i_oe + 1
    i_oe = i_os + 6


if __name__ == "__main__":
    
    for i in range(0, 32, 4):
        gen_6bit_block("Rout", "Rin", i, i + 3, 32)