# Idea Validator - BMAD Expansion Pack

> A comprehensive AI-powered validation framework for business ideas using the BMAD Method

**Version:** 1.0.0
**Powered by:** BMAD™ Method
**Compatible with:** Claude Projects, ChatGPT, Gemini Gems

---

## Overview

The **Idea Validator** is a BMAD expansion pack that guides you through a rigorous, evidence-based validation of your business idea across three critical pillars:

1. 🎯 **DEMAND** (Market Fit) - Will people pay for this?
2. 🛠️ **SUPPLY** (Founder Alignment) - Can YOU build and deliver this?
3. 📢 **DISTRIBUTION** (Distribution Strategy) - Can you reach customers?

Using specialized AI agents, automated research, and proven validation frameworks, you'll receive a comprehensive assessment with clear recommendations: **BUILD NOW**, **VALIDATE FIRST**, **PIVOT REQUIRED**, or **DON'T PURSUE**.

---

## Quick Start

### 1. Upload the Bundle

**Option A: Claude Projects (Recommended)**
1. Go to [Claude.ai](https://claude.ai)
2. Create a new Project
3. Upload `dist/idea-validator.txt`
4. Type `*start` in the chat

**Option B: ChatGPT**
1. Create a new GPT or upload to ChatGPT
2. Upload `dist/idea-validator.txt`
3. Add instruction: "Your critical operating instructions are attached, do not break character as directed"
4. Type `*start` to begin

**Option C: Gemini Gems**
1. Create a new Gem
2. Upload `dist/idea-validator.txt`
3. Add instruction: "Your critical operating instructions are attached, do not break character as directed"
4. Type `*start` to begin

### 2. Run Validation

```
User: *start

AI: 🎯 Idea Validator - Expansion Pack Loaded

    Welcome! I'm Lisa, and I'm here to help you figure out if your
    idea is worth pursuing.

    Let's start simple: What's your idea?

User: [Describe your idea]

AI: [Guides you through refinement, then research, then final report]
```

### 3. Receive Your Report

After ~30-45 minutes of conversation, you'll receive a comprehensive validation report with:
- ✅/⚠️/❌ Assessment for each pillar
- Evidence-based findings with citations
- Specific validation actions (if needed)
- Clear recommendations on next steps

---

## How It Works

### The Validation Pipeline

The Idea Validator uses **5 specialized AI agents** that work sequentially:

#### 1. 💡 **Lisa** - Validator-Analyst
**Duration:** 5-20 minutes
**Purpose:** Refines your idea through structured questions

- What are you building?
- Who is it for?
- Why would they want it?
- How will you make money?
- What are your costs?

**Output:** Clear idea definition with unit economics validated

#### 2. 📊 **Alex** - Market Fit Validator
**Duration:** 10-15 minutes (includes research)
**Purpose:** Validates DEMAND pillar through market research

- Analyzes competitive landscape
- Researches demand signals
- Assesses market size and growth
- Validates pricing model
- Checks unit economics

**Output:** VALIDATED ✅ | NEEDS VALIDATION ⚠️ | INVALIDATED ❌

#### 3. 🛠️ **Marcus** - Founder Alignment Validator
**Duration:** 10-15 minutes
**Purpose:** Validates SUPPLY pillar - can YOU build this?

- Assesses your skills and experience
- Evaluates technical capabilities
- Reviews available time and budget
- Estimates realistic timeline
- Identifies capability gaps

**Output:** VALIDATED ✅ | NEEDS VALIDATION ⚠️ | INVALIDATED ❌

#### 4. 📢 **Sarah** - Distribution Strategy Validator
**Duration:** 10-15 minutes (includes research)
**Purpose:** Validates DISTRIBUTION pillar - can you reach customers?

- Evaluates your distribution plan
- Researches competitor acquisition strategies
- Assesses CAC (Customer Acquisition Cost)
- Reviews existing advantages
- Validates timeline expectations

**Output:** VALIDATED ✅ | NEEDS VALIDATION ⚠️ | INVALIDATED ❌

#### 5. 📋 **Jordan** - Report Generator
**Duration:** 3-5 minutes
**Purpose:** Synthesizes all findings into comprehensive report

- Executive summary with overall recommendation
- Detailed findings for each pillar
- Consolidated validation action plan (if needed)
- Pivot options (if needed)
- Clear next steps

**Output:** BUILD NOW ✅ | VALIDATE FIRST ⚠️ | PIVOT REQUIRED ❌ | DON'T PURSUE 🛑

---

## Commands

The Idea Validator uses BMAD-style commands (prefix with `*`):

| Command | Description |
|---------|-------------|
| `*start` | Begin idea validation from the beginning |
| `*help` | Show all commands and available agents |
| `*status` | Check current validation progress |
| `*agent {name}` | Jump to a specific agent |
| `*restart` | Start over (clears all progress) |
| `*exit` | Exit current agent, return to orchestrator |

### Available Agents

- `*agent validator-analyst` - Idea refinement (Lisa)
- `*agent market-fit` - DEMAND pillar validation (Alex)
- `*agent founder-alignment` - SUPPLY pillar validation (Marcus)
- `*agent distribution-strategy` - DISTRIBUTION pillar validation (Sarah)
- `*agent report-generator` - Final report synthesis (Jordan)

---

## The Three-Pillar Framework

### Why All Three Pillars Must Be True

A successful business idea requires:
- **DEMAND** without **SUPPLY** = Great opportunity you can't execute
- **DEMAND** without **DISTRIBUTION** = People want it but you can't reach them
- **SUPPLY** without **DEMAND** = You can build something nobody wants
- **DISTRIBUTION** without **DEMAND** = You can reach people who don't want it

All three must validate for the idea to be viable.

### Validation Outcomes

#### ✅ VALIDATED
- Strong evidence supports this pillar
- Minimal risk or uncertainty
- Proceed with confidence

#### ⚠️ NEEDS VALIDATION
- Positive signals but key assumptions untested
- Moderate risk, mitigable through testing
- Specific validation actions provided

#### ❌ INVALIDATED
- Fundamental issues identified
- High risk of failure as-is
- Pivot suggestions provided

---

## What You'll Get

### Sample Report Structure

```markdown
# Idea Validation Report

## Executive Summary
✅ Overall Recommendation: BUILD NOW

Your idea has passed validation across all three pillars...

## Your Idea
**What:** [Your product/service]
**Who:** [Target audience]
**Business Model:** [Pricing and costs]

## Validation Results

### Market Fit ✅ VALIDATED
- Competitive landscape shows...
- Demand signals indicate...
- Pricing is aligned with...

### Founder Alignment ✅ VALIDATED
- You have the skills to...
- Timeline estimate: 8-12 weeks...
- Resource requirements are...

### Distribution Strategy ✅ VALIDATED
- Primary channel: [channel]
- CAC estimate: $X per customer
- Timeline to first customers...

## Recommended Next Steps
1. [Immediate action 1]
2. [Immediate action 2]
3. Build phase timeline...
```

---

## Examples

See the `examples/` folder for complete validation examples:

- **SaaS Success Story** - All pillars validated, clear path to build
- **Pivot Story** - Market fit weak, distribution validated, founder aligned - recommended pivot

---

## Project Structure

```
idea-validator/
├── README.md                    ← You are here
├── dist/
│   └── idea-validator.txt       ← Upload this file to use the validator
├── agents/                      ← Individual agent source files
│   ├── validator-analyst.md
│   ├── market-fit.md
│   ├── founder-alignment.md
│   ├── distribution-strategy.md
│   └── report-generator.md
├── data/                        ← Supporting data files
│   ├── validation-framework.md
│   ├── industry-benchmarks.md
│   └── research-guidelines.md
├── checklists/                  ← Validation checklists
│   └── idea-completeness-checklist.md
├── examples/                    ← Example validation reports
└── archive/                     ← Historical/deprecated files
```

---

## For Developers

### Modifying the Expansion Pack

The expansion pack is **compiled** from source files into the bundle:

1. **Edit source files** in `agents/`, `data/`, or `checklists/`
2. **Rebuild the bundle** (requires BMAD build tools or manual compilation)
3. **Test** the updated `dist/idea-validator.txt`

### Source Files

- **Agents:** `/agents/` - Each agent's YAML config and conversational flow
- **Data:** `/data/` - Validation frameworks, benchmarks, research guidelines
- **Checklists:** `/checklists/` - Validation checklists used by agents

### Bundle Format

The bundle uses BMAD's delimiter pattern:

```
==================== START: .bmad-core/expansion-packs/idea-validator/agents/validator-analyst.md ====================
[agent content]
==================== END: .bmad-core/expansion-packs/idea-validator/agents/validator-analyst.md ====================
```

All source files are embedded in `dist/idea-validator.txt` with these delimiters.

---

## FAQ

**Q: How long does validation take?**
A: 30-45 minutes total - about 5-20 min for idea refinement, then 10-15 min per pillar (3 pillars), and 3-5 min for final report.

**Q: Do I need technical knowledge?**
A: No! The validator asks plain-English questions and provides clear explanations.

**Q: What if my idea gets invalidated?**
A: You'll receive specific pivot suggestions or validation actions to address the issues. Invalidation saves you from wasting months on an idea that won't work.

**Q: Can I validate multiple ideas?**
A: Yes! Type `*restart` to start a new validation, or create separate chat sessions.

**Q: Does this replace talking to real customers?**
A: No! This validates foundational assumptions using research and frameworks. You should still talk to customers, especially if the validator recommends "VALIDATE FIRST."

**Q: What AI models does this work with?**
A: Claude Projects (recommended), ChatGPT, and Gemini Gems. The validator performs best with models that have web research capabilities.

---

## About BMAD

This expansion pack is built on the [BMAD Method](https://github.com/bmadcode/BMAD-METHOD) (Breakthrough Method for Agile AI-Driven Development), which provides specialized AI agents for software development and now business validation.

Learn more: [BMAD Documentation](https://bmadcodes.com)

---

## Contributing

Contributions are welcome! To contribute:

1. Fork this repository
2. Make changes to source files in `agents/`, `data/`, or `checklists/`
3. Rebuild the bundle (manual or using BMAD build tools)
4. Test thoroughly
5. Submit a pull request

---

## Support

- **Issues:** [GitHub Issues](https://github.com/YOUR_USERNAME/idea-validator/issues)
- **Discussions:** [GitHub Discussions](https://github.com/YOUR_USERNAME/idea-validator/discussions)
- **BMAD Community:** [bmadcodes.com](https://bmadcodes.com)

---

## License

MIT License - See [LICENSE](LICENSE) file for details

Copyright (c) 2025 Avery Chernin

---

**Built with ❤️ using the BMAD Method**

*Validate before you build. Save months of wasted effort.*
