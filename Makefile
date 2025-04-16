# Source files
SRC = majority.v majority_tb.v
OUT = sim
WAVE = waveform.vcd

# Default target: build, run, and open GTKWave
all: $(WAVE)
	gtkwave $(WAVE) &

# Compile and run simulation
$(WAVE): $(SRC)
	iverilog -o $(OUT) $(SRC)
	vvp $(OUT)

# Clean up generated files
clean:
	rm -f $(OUT) $(WAVE)

