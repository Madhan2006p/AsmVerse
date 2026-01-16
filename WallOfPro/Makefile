ASM     = nasm
LD      = ld

ASMFLAGS = -f elf64
LDFLAGS  =

TARGET = SumOfEven
OBJ    = SumOfEven.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) $^ -o $@

$(OBJ): SumOfEven.asm
	$(ASM) $(ASMFLAGS) $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET)

