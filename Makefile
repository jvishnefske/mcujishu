# Makefile for mcujishu STM32F103 LCD firmware
# Uses Docker with ARM toolchain for cross-compilation

DOCKER_IMAGE = arm-none-eabi-toolchain
PROJECT_NAME = mcujishu
BUILD_DIR = build

# Docker run command with current directory mounted
DOCKER_RUN = docker run --rm -v $(CURDIR):/workspace -w /workspace $(DOCKER_IMAGE)

.PHONY: all clean flash docker-build configure size

all: $(BUILD_DIR)/blink3.elf

# Create build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Build firmware using Docker ARM toolchain
$(BUILD_DIR)/blink3.elf: $(BUILD_DIR)
	$(DOCKER_RUN) sh -c "mkdir -p $(BUILD_DIR) && cd $(BUILD_DIR) && cmake .. && make"

# Alias for compatibility
build: $(BUILD_DIR)/blink3.elf

# Clean build artifacts
clean:
	rm -rf $(BUILD_DIR)

# Build Docker image with ARM toolchain (one-time setup)
docker-build:
	docker build -t $(DOCKER_IMAGE) -f Dockerfile.toolchain .

# Flash firmware to target via OpenOCD
flash: $(BUILD_DIR)/blink3.elf
	openocd -f openocd-olimex.cfg -c "program $(BUILD_DIR)/blink3.elf verify reset exit"

# Run cmake configuration only
configure: $(BUILD_DIR)
	$(DOCKER_RUN) sh -c "cd $(BUILD_DIR) && cmake .."

# Show binary size
size: $(BUILD_DIR)/blink3.elf
	$(DOCKER_RUN) arm-none-eabi-size $(BUILD_DIR)/blink3.elf
