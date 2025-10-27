# Archive

This folder contains experimental or deprecated files from the Idea Validator development process.

## Files

### idea-validator-orchestrator-v1.md
**Status:** Deprecated
**Date:** October 2024
**Description:** Initial attempt at creating a custom orchestrator before discovering the proper BMAD expansion pack pattern.

This file attempted to create a meta-agent that would automatically orchestrate all 5 agents in a single conversation. While the concept was sound, it didn't follow the established BMAD pattern of command-based agent loading (`*start`, `*agent {name}`, etc.).

**Replaced by:** `dist/idea-validator.txt` - A proper BMAD-compatible expansion pack bundle that follows the proven `team-fullstack.txt` pattern.

**Why archived:**
- Untested pattern (unclear if Claude would actually orchestrate properly)
- Not compatible with BMAD command system
- Implicit transitions vs explicit command-based navigation
- No proven precedent in BMAD ecosystem

**Historical value:**
- Documents our learning process
- Shows evolution from custom approach to BMAD pattern
- Contains useful agent embedding concepts

---

**For production use:** Always use `dist/idea-validator.txt` instead.
