# Custom `memset` Implementation in Assembly

## **Overview**
This project showcases a custom implementation of the `memset` function written in RISC-V assembly, integrated with a C program. The `memset` function is designed to fill a block of memory with a specified value, demonstrating low-level memory manipulation and efficient assembly programming.

---

## **Files in the Project**
- **`main.c`**: Contains the main C program that declares and calls the custom `memset` function.
- **`memset.s`**: Implements the `memset` function in RISC-V assembly, optimized for memory alignment and performance.
- **`README.md`**: This file, providing a comprehensive overview, instructions, and insights into the project.

---

## **Functionality**
The program performs the following tasks:
1. Declares a 32-byte character buffer in the C code.
2. Calls the custom `memset` function to fill the buffer with the character `'A'`.
3. Prints the contents of the buffer to verify correct operation.

---

## **Usage Instructions**

### **Prerequisites**
Before running this project, ensure the following tools and environment are available:
- A RISC-V toolchain (e.g., `riscv64-unknown-elf-gcc`).
- A RISC-V emulator (e.g., QEMU) or access to a physical RISC-V hardware platform.

### **Compilation and Execution**
1. Save the C code in a file named `main.c` and the assembly code in a file named `memset.s`.
2. Compile and link the files using the RISC-V compiler:
   ` riscv64-unknown-elf-gcc -o memset_program main.c memset.s`
3. Run the program:
Using QEMU:
`qemu-riscv64 ./memset_program`
On RISC-V hardware:
`./memset_program`
### **Expected Output**
The program will print 32 'A' characters in a single line:
`AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA`

