#!/bin/bash
# Build script for idea-validator.txt
# Compiles all source files into a single bundle

OUTPUT_FILE="dist/idea-validator.txt"
TEMP_FILE="/tmp/idea-validator-build.txt"

echo "Building Idea Validator bundle..."

# Start with header
cat > "$TEMP_FILE" << 'EOF'
# IDEA VALIDATOR EXPANSION PACK
# Powered by BMAD™ Method
# Version: 1.0.0

================================================================================
NAVIGATION INSTRUCTIONS

This file contains a complete Idea Validator expansion pack bundled for
AI platforms (ChatGPT, Claude Projects, Gemini Gems).

All resources are embedded with START/END markers:
==================== START: path/to/file.md ====================
[content]
==================== END: path/to/file.md ====================

When activated, use *help to see available commands.
================================================================================

EOF

# Add orchestrator (extract from existing dist if it exists, otherwise create default)
echo "Adding orchestrator..."
if [ -f "$OUTPUT_FILE" ]; then
    # Extract orchestrator from existing bundle
    sed -n '/START: \.bmad-core\/expansion-packs\/idea-validator\/orchestrator.md/,/END: \.bmad-core\/expansion-packs\/idea-validator\/orchestrator.md/p' "$OUTPUT_FILE" >> "$TEMP_FILE"
    echo "" >> "$TEMP_FILE"
else
    echo "Warning: No existing orchestrator found. You'll need to add it manually or use an existing bundle."
fi

# Add agents
for agent in validator-analyst market-fit founder-alignment distribution-strategy report-generator; do
    echo "Adding agent: $agent..."
    cat >> "$TEMP_FILE" << EOF
==================== START: .bmad-core/expansion-packs/idea-validator/agents/${agent}.md ====================
EOF
    cat "agents/${agent}.md" >> "$TEMP_FILE"
    cat >> "$TEMP_FILE" << EOF

==================== END: .bmad-core/expansion-packs/idea-validator/agents/${agent}.md ====================

EOF
done

# Add data files
for datafile in validation-framework industry-benchmarks research-guidelines; do
    echo "Adding data file: $datafile..."
    cat >> "$TEMP_FILE" << EOF
==================== START: .bmad-core/expansion-packs/idea-validator/data/${datafile}.md ====================
EOF
    cat "data/${datafile}.md" >> "$TEMP_FILE"
    cat >> "$TEMP_FILE" << EOF

==================== END: .bmad-core/expansion-packs/idea-validator/data/${datafile}.md ====================

EOF
done

# Add checklist
echo "Adding checklist: idea-completeness-checklist..."
cat >> "$TEMP_FILE" << 'EOF'
==================== START: .bmad-core/expansion-packs/idea-validator/checklists/idea-completeness-checklist.md ====================
EOF
cat "checklists/idea-completeness-checklist.md" >> "$TEMP_FILE"
cat >> "$TEMP_FILE" << 'EOF'

==================== END: .bmad-core/expansion-packs/idea-validator/checklists/idea-completeness-checklist.md ====================
EOF

# Move to final location
mv "$TEMP_FILE" "$OUTPUT_FILE"

echo "✓ Build complete: $OUTPUT_FILE"
echo "File size: $(wc -c < "$OUTPUT_FILE") bytes"
echo "Line count: $(wc -l < "$OUTPUT_FILE") lines"
