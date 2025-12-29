# Food & Nutrition Components

Design system components for food database search, nutritional analysis, and meal tracking.

## Overview

These components provide a comprehensive UI system for nutritional information lookup, food logging, and barcode scanning. The components work together to create an informative and user-friendly nutrition tracking experience.

## Components

### FoodSearch.html
Advanced food database search interface with filtering options.

**Features:**
- Text-based food search with autocomplete
- Category and food group filters
- Sorting options (name, calories, protein)
- Advanced search with nutritional parameters
- Real-time search results display

**Usage:**
```html
<!-- Include the component -->
<div id="food-search-container"></div>
<script src="FoodSearch.html"></script>
```

### NutritionCard.html
Detailed nutritional information display for selected foods.

**Features:**
- Comprehensive nutritional breakdown
- Macronutrient and micronutrient display
- Data completeness indicators
- Safety information and analysis
- Visual progress bars for nutrients

**Usage:**
```html
<!-- Include the component -->
<div id="nutrition-card-container"></div>
<script src="NutritionCard.html"></script>
```

### BarcodeScanner.html
Camera-based barcode scanning interface for food identification.

**Features:**
- Live camera feed with scanning overlay
- Manual barcode entry fallback
- Product lookup and nutritional data retrieval
- Camera permission handling
- Scanning status indicators

**Usage:**
```html
<!-- Include the component -->
<div id="barcode-scanner-container"></div>
<script src="BarcodeScanner.html"></script>
```

### FoodLogForm.html
Meal and food intake logging interface.

**Features:**
- Daily nutritional summary dashboard
- Food search and addition to meals
- Portion size and quantity controls
- Meal categorization (breakfast, lunch, dinner, snacks)
- Progress tracking and logging history

**Usage:**
```html
<!-- Include the component -->
<div id="food-log-container"></div>
<script src="FoodLogForm.html"></script>
```

## Design System Integration

### Colors
- Primary: `#007bff` (Blue - nutrition/analysis theme)
- Success: `#28a745` (Green - healthy choices)
- Warning: `#ffc107` (Yellow - caution items)
- Background: `#f8f9fa` (Light gray)
- Text: `#2c3e50` (Dark gray)

### Typography
- Headers: 18-24px, 600 weight
- Body: 14-16px, 400-500 weight
- Nutritional Values: 16-20px, 700 weight
- Labels: 12-14px, uppercase, 0.5px letter-spacing

### Spacing
- Component padding: 20-25px
- Element gaps: 15px
- Form field spacing: 12px

### Interactive Elements
- Hover states with subtle color changes
- Smooth transitions (0.3s ease)
- Focus states with blue outlines
- Loading states with spinner animations

## Accessibility

- Screen reader support for nutritional data
- Keyboard navigation for all interactive elements
- High contrast nutritional information display
- Alternative text for food images and icons
- Clear labeling for form inputs and buttons

## Mobile Responsiveness

- Responsive grid layouts for nutritional data
- Touch-friendly button sizes and form inputs
- Optimized camera interface for mobile devices
- Flexible layouts that work on all screen sizes

## Browser Support

- Modern browsers with camera API support
- Progressive enhancement for older browsers
- Fallback interfaces for unsupported features
- Cross-platform compatibility

## Implementation Notes

- Components use vanilla JavaScript for broad compatibility
- Mock nutritional data included for demonstration
- Modular design allows independent component usage
- Consistent error handling and user feedback
- Advanced computational methods for nutritional analysis

## Data Structure

Components expect structured nutritional data:

```javascript
// Food Item Structure
{
  name: "Apple",
  brand: "Fresh Produce",
  servingSize: "1 medium (182g)",
  calories: 95,
  macronutrients: {
    carbs: 25.1,
    protein: 0.5,
    fat: 0.3,
    fiber: 4.4
  },
  micronutrients: {
    vitaminC: 8.4,
    potassium: 195,
    vitaminK: 3.6
  }
}

// Meal Log Structure
{
  date: "2024-12-28",
  meals: {
    breakfast: [{food: "Oatmeal", quantity: 1}],
    lunch: [{food: "Chicken Salad", quantity: 1}],
    dinner: [{food: "Grilled Salmon", quantity: 1}],
    snacks: [{food: "Apple", quantity: 1}]
  }
}
```

## Contributing

When contributing to food & nutrition components:

1. Maintain nutrition-focused color palette and terminology
2. Include comprehensive nutritional information display
3. Ensure accessibility for users with dietary restrictions
4. Follow established data structures and APIs
5. Test with various food types and nutritional profiles

## Safety Considerations

Components include food safety features:
- Allergen and sensitivity warnings
- Nutritional completeness indicators
- Serving size recommendations
- Balanced meal planning guidance
- Educational nutritional information
