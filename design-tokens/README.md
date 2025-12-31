# 🎨 Design Tokens

Design tokens are the foundational visual values that define the Lighthouse Portal design system. They ensure consistency across all components and make it easy to maintain and update the visual language.

## 📁 Token Files

This directory contains three JSON files:

- **`colors.json`** - Color palette and theme definitions
- **`spacing.json`** - Spacing scale and border radius values
- **`typography.json`** - Font families, sizes, weights, and line heights

## 🎨 Colors (`colors.json`)

### Structure

```json
{
  "colors": {
    "brand": { ... },
    "status": { ... },
    "neutral": { ... }
  },
  "themes": {
    "light": { ... },
    "dark": { ... }
  }
}
```

### Usage

**Brand Colors**:
- `colors.brand.primary` - Main brand color (#ff8c00)
- `colors.brand.secondary` - Secondary brand color (#28a745)
- `colors.brand.accent` - Accent color (#f79420)

**Status Colors**:
- `colors.status.success` - Success states (#28a745)
- `colors.status.warning` - Warning states (#ffc107)
- `colors.status.error` - Error states (#dc3545)
- `colors.status.info` - Informational states (#17a2b8)

**Neutral Colors**:
- `colors.neutral.white` through `colors.neutral.black` - Grayscale palette

**Theme Colors**:
- `themes.light.bg` / `themes.light.text` - Light theme values
- `themes.dark.bg` / `themes.dark.text` - Dark theme values

### Example

```css
.button-primary {
  background-color: var(--lhp-color-brand-primary, #ff8c00);
  color: var(--lhp-color-neutral-white, #ffffff);
}
```

## 📏 Spacing (`spacing.json`)

### Structure

```json
{
  "spacing": {
    "0": "0",
    "1": "0.25rem",
    "2": "0.5rem",
    ...
  },
  "borderRadius": {
    "none": "0",
    "sm": "0.125rem",
    ...
  }
}
```

### Usage

**Spacing Scale**: Use the numbered scale (0-16) for consistent spacing.

- `spacing.0` = 0 (no spacing)
- `spacing.4` = 1rem (base unit)
- `spacing.8` = 2rem
- `spacing.16` = 4rem

**Border Radius**:
- `borderRadius.sm` - Small radius (0.125rem)
- `borderRadius.base` - Base radius (0.25rem)
- `borderRadius.lg` - Large radius (0.5rem)
- `borderRadius.full` - Full circle (9999px)

### Example

```css
.card {
  padding: var(--lhp-spacing-4, 1rem);
  margin-bottom: var(--lhp-spacing-6, 1.5rem);
  border-radius: var(--lhp-border-radius-lg, 0.5rem);
}
```

## ✍️ Typography (`typography.json`)

### Structure

```json
{
  "fontFamily": { ... },
  "fontSize": { ... },
  "fontWeight": { ... },
  "lineHeight": { ... }
}
```

### Usage

**Font Families**:
- `fontFamily.primary` - 'Poppins', sans-serif (main UI font)
- `fontFamily.secondary` - 'Inter', sans-serif (alternative font)

**Font Sizes**:
- `fontSize.xs` = 0.75rem
- `fontSize.sm` = 0.875rem
- `fontSize.base` = 1rem (default)
- `fontSize.lg` = 1.125rem
- `fontSize.xl` = 1.25rem
- `fontSize.2xl` = 1.5rem
- `fontSize.3xl` = 1.875rem

**Font Weights**:
- `fontWeight.normal` = 400
- `fontWeight.medium` = 500
- `fontWeight.semibold` = 600
- `fontWeight.bold` = 700

**Line Heights**:
- `lineHeight.none` = 1
- `lineHeight.tight` = 1.25
- `lineHeight.normal` = 1.5
- `lineHeight.relaxed` = 1.625

### Example

```css
.heading {
  font-family: var(--lhp-font-family-primary, 'Poppins', sans-serif);
  font-size: var(--lhp-font-size-2xl, 1.5rem);
  font-weight: var(--lhp-font-weight-bold, 700);
  line-height: var(--lhp-line-height-tight, 1.25);
}
```

## 🔧 Implementation Notes

### CSS Custom Properties

While the tokens are stored as JSON, components should use CSS custom properties (CSS variables) for runtime theming. The JSON files serve as the source of truth.

### Theme Support

All components must support both light and dark themes. Use theme-aware tokens:

```css
.component {
  background: var(--lhp-theme-bg, #ffffff);
  color: var(--lhp-theme-text, #333333);
}

[data-theme="dark"] .component {
  background: var(--lhp-theme-bg, #1a1a1a);
  color: var(--lhp-theme-text, #f8f9fa);
}
```

### Fallback Values

Always provide fallback values in CSS:

```css
/* Good */
color: var(--lhp-color-brand-primary, #ff8c00);

/* Avoid */
color: var(--lhp-color-brand-primary);
```

## ✅ Contribution Guidelines

When proposing changes to design tokens:

1. **Maintain consistency**: Ensure new tokens follow existing naming patterns
2. **Document changes**: Explain why a new token is needed
3. **Test themes**: Verify tokens work in both light and dark themes
4. **Check accessibility**: Ensure color combinations meet WCAG AAA (visually) standards

## 📚 Related Documentation

- [Design Patterns](../design-patterns/README.md) - How to use tokens in components
- [Vocabulary](../VOCABULARY.md) - Standard terminology
- [Contributing](../CONTRIBUTING.md) - Contribution guidelines

---

*Last updated: [Current Date]*

