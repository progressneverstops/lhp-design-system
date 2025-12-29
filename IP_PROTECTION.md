# 🔒 Intellectual Property Protection Policy

The Lighthouse Portal (LHP) public design repository is structured to maximize collaboration while strictly safeguarding proprietary technology and business secrets.

## 🛡️ Core Protection Principles

### 1. Security through Obscurity
We expose the **visual interface** (the "skin") but hide the **mechanical logic** (the "engine"). 
- **Example**: A "Vitality Score" component shows the visual ring and number, but the `calculateVitality()` function is a mock that returns a static value or a simple random number.

### 2. Algorithmic Secrecy
All proprietary health formulas, hormonal analysis logic, and predictive modeling are strictly excluded.
- **Excluded**: 3D Body Morphing algorithms, Hormonal Factor calculations, Nutrient Bioavailability logic.
- **Included**: Layout of the inputs for body measurements, visual representation of nutrient breakdowns.

### 3. Business Strategy Protection
Information regarding monetization, revenue projections, and specific market launch timelines are kept in private documentation.
- **No-Dates Policy**: All specific years and timeline markers have been removed from public-facing code and documentation.

### 4. Data Privacy
This repository contains **zero** real user data. All names, emails, and health metrics in examples are entirely fictional.

## 📁 Component Extraction Checklist
Every component in this repository has been through the following "Sanitization Pipeline":
- [x] **Remove Algorithms**: Replace math formulas with generic placeholders (e.g., `calculateScore()`).
- [x] **Generic Naming**: Rename internal-only variables to descriptive, generic terms.
- [x] **Mock Data Only**: Ensure all example states use generic mock data.
- [x] **Path Sanitization**: Remove all local machine paths or internal server URLs.
- [x] **Comment Sweep**: Remove developer notes, TODOs, or references to internal Jira/Slack discussions.

## 🚫 Restricted Features
The following features are **explicitly excluded** from this repository due to high IP sensitivity:
- **3D Body Visualizer**: Implementation details for mesh morphing and hormonal scaling.
- **Proprietary AI Engine**: Logic for personalized health recommendations.
- **Natural Remedies Database**: The specific proprietary mapping of symptoms to remedies.

---
If you believe a proprietary element has been accidentally exposed, please report it immediately to `contact@lighthouse-portal.com`.

