# Editorial Policy: Humanization vs. Reasoning Diagnostics

This document establishes the boundary between humanization patterns (writing-quality rewrites) and reasoning-failure diagnostics (model behavior/evidence claims) in the Humanizer project.

## Purpose

The Humanizer project addresses two distinct types of issues in AI-generated text:
1. **Humanization patterns**: Writing quality issues that make text sound unnatural or "AI-like"
2. **Reasoning diagnostics**: Issues related to the underlying reasoning failures of LLMs

This policy defines the boundaries between these two approaches to ensure consistent application and clear documentation.

## Humanization Patterns (Core Humanizer)

### Definition
Humanization patterns address surface-level writing qualities that make text sound artificial or "AI-like" without necessarily indicating deeper reasoning failures.

### Scope
- Removing inflated language and significance inflation
- Eliminating promotional tone in inappropriate contexts
- Reducing repetitive or formulaic phrasing
- Improving sentence flow and variety
- Adjusting tone to match intended audience
- Removing collaborative communication artifacts ("I hope this helps", "Let me know")

### Examples
- Changing "This serves as a vital cornerstone in the evolving landscape" to "This is an important part of the system"
- Changing "Great question! This is a complex topic." to "This is a complex topic."
- Reducing the use of buzzwords like "groundbreaking", "pivotal", "transformative"

### Application
- Applied broadly to all AI-generated text
- Focus on improving readability and naturalness
- Preserves meaning while improving expression
- Part of the core Humanizer skill

## Reasoning Diagnostics (Reasoning Stream)

### Definition
Reasoning diagnostics identify and address specific failures in the logical reasoning processes of LLMs that manifest in the generated text.

### Scope
- Identifying depth-dependent reasoning failures
- Detecting context-switching errors
- Recognizing temporal reasoning limitations
- Flagging logical fallacy susceptibility
- Addressing quantitative reasoning deficits
- Correcting self-consistency failures
- Improving verification and checking

### Examples
- Identifying when an LLM provides a complex explanation that loses focus (depth-dependent)
- Detecting when an LLM abruptly changes topics without transition (context-switching)
- Recognizing when an LLM confuses chronological order (temporal reasoning)
- Flagging circular reasoning or false dichotomies (logical fallacies)

### Application
- Applied selectively to text where reasoning quality is critical
- Focus on logical consistency and accuracy
- May involve fact-checking or verification steps
- Part of the specialized reasoning stream module

## Boundaries and Distinctions

### When to Apply Humanization vs. Reasoning Diagnostics

1. **Surface vs. Substance**:
   - Apply humanization for surface-level writing quality
   - Apply reasoning diagnostics for substantive logical issues

2. **Scope of Correction**:
   - Humanization typically involves rewording and restructuring
   - Reasoning diagnostics may require fact-checking or verification

3. **Domain Sensitivity**:
   - Humanization applies broadly across domains
   - Reasoning diagnostics are more critical in technical, academic, or factual contexts

### Overlap Scenarios

In some cases, both approaches may be applicable:
- Text with both "AI-like" phrasing AND logical inconsistencies
- Content that is stylistically unnatural AND logically flawed

In these cases:
1. Apply reasoning diagnostics first to address logical issues
2. Apply humanization second to improve expression of corrected content

## Documentation Requirements

### For Humanization Patterns
- Document the specific pattern being addressed
- Provide before/after examples
- Explain the rationale for the change
- Reference the core Humanizer guidance

### For Reasoning Diagnostics
- Document the specific reasoning failure category
- Provide evidence or explanation for the diagnosis
- Reference the reasoning-failure taxonomy
- Note any verification steps taken

## Quality Standards

### Humanization Quality
- Text should sound natural and human
- Meaning and intent should be preserved
- Author's voice should be maintained where appropriate
- Changes should improve readability

### Reasoning Diagnostic Quality
- Corrections should be logically sound
- Claims should be verifiable or appropriately qualified
- Changes should improve accuracy and consistency
- Evidence for diagnoses should be documented

## Integration Points

### In Documentation
- Core Humanizer docs focus on humanization patterns
- Reasoning stream docs focus on diagnostic patterns
- Cross-reference when patterns intersect

### In Implementation
- Core Humanizer module handles humanization patterns
- Reasoning stream module handles diagnostic patterns
- Integration points allow coordinated application when appropriate

## Review and Maintenance

This policy should be reviewed quarterly or when new pattern categories emerge to ensure continued clarity between humanization and reasoning diagnostic approaches.