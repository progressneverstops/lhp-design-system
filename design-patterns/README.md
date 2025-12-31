# 🎨 Design Patterns

This document outlines the **allowed design patterns** for contributions to the Lighthouse Portal design system. Following these patterns ensures consistency, accessibility, and alignment with our platform philosophy.

## ✅ Allowed Patterns

### Layout & Structure

**✅ Allowed**:
- Responsive grid layouts
- Flexbox and CSS Grid implementations
- Mobile-first responsive breakpoints
- Component composition and nesting
- Card-based layouts
- List and table structures

**Example**: Creating a new card variant with improved spacing and responsive behavior.

### Visual Design

**✅ Allowed**:
- Color palette improvements (using design tokens)
- Typography refinements
- Spacing and alignment adjustments
- Border radius and shadow variations
- Icon integration and placement
- Image and asset optimization

**Example**: Proposing a new color scheme that maintains brand identity while improving contrast.

### Interaction Design

**✅ Allowed**:
- Hover states and transitions
- Click/tap feedback animations
- Loading states and spinners
- Form validation visual feedback
- Modal and dialog patterns
- Navigation and menu interactions

**Example**: Adding smooth transitions to button hover states.

### Accessibility

**✅ Allowed**:
- WCAG AAA (visually) contrast improvements
- ARIA label additions and improvements
- Keyboard navigation enhancements
- Focus indicator improvements
- Screen reader optimizations
- Semantic HTML structure

**Example**: Improving focus indicators for better keyboard navigation.

### Theming

**✅ Allowed**:
- Light/dark theme implementations
- Theme toggle UI components
- Theme-aware color applications
- Theme transition animations

**Example**: Adding a new theme variant or improving theme toggle UX.

### Component Variants

**✅ Allowed**:
- New visual variants of existing components
- Size variations (compact, default, large)
- Style variations (outlined, filled, text-only)
- State variations (default, hover, active, disabled)

**Example**: Creating a "compact" variant of the `NutritionCard` component.

---

## 🚫 Not Allowed Patterns

### Algorithms & Calculations

**❌ Not Allowed**:
- Health calculation formulas
- Score computation logic
- Data processing algorithms
- Predictive modeling code
- Statistical analysis functions
- Body morphing algorithms (3D Visualizer)

**Why**: These are proprietary and protected by our IP policy. See [IP_PROTECTION.md](../IP_PROTECTION.md).

**What to do instead**: Use mock functions that return static or randomly generated values for demonstration purposes.

### Business Logic

**❌ Not Allowed**:
- API integration code
- Database query logic
- Authentication flows
- Payment processing
- User management logic
- Business rule implementations

**Why**: This repository is UI/UX only. Backend logic belongs in private repositories.

**What to do instead**: Use mock data and placeholder functions that simulate API responses.

### Proprietary Features

**❌ Not Allowed**:
- 3D body morphing calculations
- Hormonal factor analysis
- Nutrient bioavailability formulas
- Personalized recommendation engines
- AI/ML model implementations

**Why**: These are core intellectual property. See [IP_PROTECTION.md](../IP_PROTECTION.md).

**What to do instead**: Focus on the visual presentation and UI controls. For the 3D Visualizer, you can improve mesh rendering, camera controls, and UI layout, but not the morphing logic.

### Business Strategy

**❌ Not Allowed**:
- Pricing model changes
- Revenue strategy proposals
- Partnership logic
- Market positioning content
- Launch timeline references

**Why**: Business strategy is confidential. See [IP_PROTECTION.md](../IP_PROTECTION.md).

**What to do instead**: Focus purely on UI/UX improvements to existing features.

---

## 🎯 Pattern Examples

### ✅ Good: Improving Button Accessibility

```css
/* Allowed: Visual and accessibility improvements */
.button {
  padding: var(--lhp-spacing-3, 0.75rem) var(--lhp-spacing-6, 1.5rem);
  border-radius: var(--lhp-border-radius-base, 0.25rem);
  transition: all 0.2s ease;
}

.button:focus-visible {
  outline: 3px solid var(--lhp-color-brand-primary, #ff8c00);
  outline-offset: 2px;
}

.button:hover {
  transform: translateY(-1px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
```

### ❌ Bad: Adding Calculation Logic

```javascript
// NOT ALLOWED: Proprietary calculation
// NOTE: The formula below is a fictional example for educational purposes only.
// These specific multipliers (0.6, 0.4) and function names are NOT actual LHP algorithms.
function calculateVitalityScore(metrics) {
  const hormonalFactor = calculateHormonalFactor(metrics.hormones);
  const nutrientScore = calculateNutrientBioavailability(metrics.nutrition);
  return (hormonalFactor * 0.6) + (nutrientScore * 0.4);
}
```

**Instead, use a mock**:

```javascript
// Allowed: Mock function for UI demonstration
function calculateVitalityScore(metrics) {
  // Mock implementation for UI purposes only
  return Math.floor(Math.random() * 40) + 60; // Returns 60-100
}
```

---

## 🧭 Special Case: 3D Body Visualizer

The 3D Body Visualizer has **middle-ground guardrails**:

### ✅ Allowed for 3D Visualizer:
- Mesh rendering improvements
- Camera control UX (OrbitControls, zoom, pan)
- UI layout and styling
- Wireframe toggle implementation
- Animation pause/play controls
- New open-source mesh variants (with clear licensing)
- Lighting and material adjustments

### ❌ Not Allowed for 3D Visualizer:
- Body morphing algorithms
- Parameter-to-mesh calculations
- Hormonal scaling formulas
- Body intelligence computations
- Proprietary measurement mappings

**See**: The 3D Visualizer includes a "3D Designers Only" acknowledgment overlay as a guardrail. This is a reminder, not security.

---

## 📋 Pattern Checklist

Before submitting a contribution, verify:

- [ ] Changes are purely UI/UX (visual, interaction, layout)
- [ ] No algorithms or calculations added
- [ ] Uses design tokens from `design-tokens/`
- [ ] Meets WCAG AAA (visually) contrast standards
- [ ] Works in both light and dark themes
- [ ] Uses terminology from [VOCABULARY.md](../VOCABULARY.md)
- [ ] No business logic or API calls
- [ ] Mock data only (no real consumer data)

---

## 📚 Related Documentation

- [Vocabulary](../VOCABULARY.md) - Standard terminology
- [Design Tokens](../design-tokens/README.md) - Token usage
- [Contributing](../CONTRIBUTING.md) - Contribution workflow
- [IP Protection](../IP_PROTECTION.md) - What's protected

---

*Last updated: [Current Date]*

