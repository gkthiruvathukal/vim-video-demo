BUILD_DIR := build
OUTPUT    := $(BUILD_DIR)/lorem-ipsum-demo.mp4
TAPE      := lorem-ipsum-demo.tape

.PHONY: all clean brew-install

all: $(OUTPUT)

$(OUTPUT): $(TAPE) | $(BUILD_DIR)
	vhs $(TAPE)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

brew-install:
	brew install vhs ffmpeg
