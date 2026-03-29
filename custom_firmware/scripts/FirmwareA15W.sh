#!/bin/bash
# A15W Firmware encrypt/decrypt tool
# Key extracted from ARMimg_maker binary via reverse engineering
#
# Usage:
#   ./FirmwareA15W.sh decrypt A15W_Update.img output.tar.gz
#   ./FirmwareA15W.sh encrypt input.tar.gz A15W_Update.img

set -e

# AES-128-CBC parameters (extracted from ARMimg_maker)
AES_KEY="AutoPlay9uPT4n17"
AES_IV="AutoPlay9uPT4n17"

# Check dependencies
if ! command -v openssl &> /dev/null; then
    echo "Error: OpenSSL is not installed."
    exit 1
fi

# Check arguments
if [ "$#" -ne 3 ]; then
    echo "Carlinkit A15W Firmware Tool"
    echo ""
    echo "Usage: $0 <encrypt|decrypt> <input_file> <output_file>"
    echo ""
    echo "Examples:"
    echo "  Decrypt: $0 decrypt A15W_Update.img firmware.tar.gz"
    echo "  Encrypt: $0 encrypt firmware.tar.gz A15W_Update.img"
    echo ""
    echo "Key: $AES_KEY"
    exit 1
fi

MODE="$1"
INPUT_FILE="$2"
OUTPUT_FILE="$3"

# Verify input exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' does not exist."
    exit 1
fi

# Convert key to hex
KEY_HEX=$(printf "%s" "$AES_KEY" | od -A n -t x1 | tr -d ' \n')
IV_HEX=$(printf "%s" "$AES_IV" | od -A n -t x1 | tr -d ' \n')

# Get file size (handle macOS vs Linux)
if [[ "$OSTYPE" == "darwin"* ]]; then
    FILESIZE=$(stat -f %z "$INPUT_FILE")
else
    FILESIZE=$(stat -c%s "$INPUT_FILE")
fi

# Calculate block alignment (AES uses 16-byte blocks)
BLOCK_SIZE=16
REMAINDER=$((FILESIZE % BLOCK_SIZE))
TRUNCATED=$((FILESIZE - REMAINDER))

# Create temp files
TEMP_ALIGNED=$(mktemp)
TEMP_REMAINDER=$(mktemp)

# Extract block-aligned portion and remainder
head -c "$TRUNCATED" "$INPUT_FILE" > "$TEMP_ALIGNED"
if [ "$REMAINDER" -gt 0 ]; then
    tail -c "$REMAINDER" "$INPUT_FILE" > "$TEMP_REMAINDER"
fi

if [ "$MODE" == "decrypt" ]; then
    # Decrypt block-aligned portion
    openssl enc -d -aes-128-cbc -nopad \
        -K "$KEY_HEX" -iv "$IV_HEX" \
        -in "$TEMP_ALIGNED" -out "$OUTPUT_FILE"

    # Append unencrypted remainder
    if [ "$REMAINDER" -gt 0 ]; then
        cat "$TEMP_REMAINDER" >> "$OUTPUT_FILE"
    fi

    echo "Decrypted: $INPUT_FILE -> $OUTPUT_FILE"
    echo "Output size: $(ls -la "$OUTPUT_FILE" | awk '{print $5}') bytes"

    # Verify output
    if head -c 2 "$OUTPUT_FILE" | xxd | grep -q "1f8b"; then
        echo "Verification: Valid gzip header detected"
    else
        echo "Warning: Output may not be valid gzip"
    fi

elif [ "$MODE" == "encrypt" ]; then
    # Encrypt block-aligned portion
    openssl enc -e -aes-128-cbc -nopad \
        -K "$KEY_HEX" -iv "$IV_HEX" \
        -in "$TEMP_ALIGNED" -out "$OUTPUT_FILE"

    # Append unencrypted remainder
    if [ "$REMAINDER" -gt 0 ]; then
        cat "$TEMP_REMAINDER" >> "$OUTPUT_FILE"
    fi

    echo "Encrypted: $INPUT_FILE -> $OUTPUT_FILE"
    echo "Output size: $(ls -la "$OUTPUT_FILE" | awk '{print $5}') bytes"

else
    echo "Error: Invalid mode '$MODE'. Use 'encrypt' or 'decrypt'"
    rm -f "$TEMP_ALIGNED" "$TEMP_REMAINDER"
    exit 1
fi

# Cleanup
rm -f "$TEMP_ALIGNED" "$TEMP_REMAINDER"
