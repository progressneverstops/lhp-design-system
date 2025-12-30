# 3D Body Visualizer - UI/UX Component

## ⚠️ Important Notice

**This is a UI/UX showcase component with actual 3D mesh rendering.** This component demonstrates the interface design and shows the open-source base rigged mesh, but **does NOT include proprietary body morphing algorithms**.

### What IS Included:
- ✅ **Actual 3D mesh rendering** (open-source base rigged model)
- ✅ **Wireframe toggle** (safe control - visual only)
- ✅ **Pause animation toggle** (safe control - stops rotation)
- ✅ **Theme switching** (light/dark mode)
- ✅ **Orbit controls** (camera rotation/zoom)
- ✅ **Responsive design patterns**
- ✅ **Visual styling and animations**

### What is NOT Included:
- ❌ Proprietary body morphing algorithms
- ❌ Hormone receptor calculations
- ❌ Measurement formulas
- ❌ Body parameter sliders (skeletal frame, muscle mass, body fat, etc.)
- ❌ Preset body type buttons
- ❌ Any transformations that modify the mesh geometry
- ❌ Business logic or computation methods

## Purpose

This component is designed for **3D designers and UI/UX designers** who want to:
- See the actual 3D mesh visualization
- Understand the interface structure
- Review the visual design patterns
- See how safe controls (wireframe, pause) work
- Create their own implementations

## Component Structure

```
3d-body-visualizer/
├── components/
│   └── BodyVisualizer.html    # Main component with mesh + safe controls
├── examples/
│   └── example-usage.html     # Showcase page
└── README.md                   # This file
```

## Usage

The component loads and displays the open-source base rigged mesh. The mesh rotates automatically and can be:
- **Viewed in wireframe mode** (toggle switch)
- **Paused** (toggle switch)
- **Rotated/zoomed** (mouse/touch orbit controls)
- **Themed** (light/dark mode toggle)

### Mesh Loading

The component attempts to load a GLB mesh from a specified path. If the mesh fails to load, it falls back to a simple placeholder geometry.

**To use your own open-source base mesh:**
1. Place your GLB file in a publicly accessible location
2. Update the `meshPath` variable in `BodyVisualizer.html`:
   ```javascript
   const meshPath = '/path/to/your/open-source-base-mesh.glb';
   ```

## Design Patterns

### Minimal Safe Controls
- **Wireframe Mode**: Toggle to view mesh wireframe (visual only, no geometry changes)
- **Pause Animation**: Toggle to stop/start mesh rotation (safe control)
- **Theme Toggle**: Switch between light/dark modes

### Removed Controls (Proprietary)
The following controls were **removed** because they would require proprietary algorithms:
- Body Composition sliders (Skeletal Frame, Muscle Mass, Body Fat)
- Regional Measurement sliders (Height, Waist, Hips)
- Preset buttons (Athletic, Average, Slim, Heavy)

### Responsive Layout
- **Mobile**: Controls panel at bottom (drawer style)
- **Desktop**: Controls panel on right side (sidebar style)

### Theme Support
- Light/dark mode switching
- Persistent theme preference (localStorage)
- Smooth transitions between themes
- Scene background adapts to theme

## Technical Details

### Three.js Setup
- Uses Three.js r161+ via ES modules (CDN)
- GLTFLoader for mesh loading
- OrbitControls for camera interaction
- Hemisphere + Directional lighting

### Mesh Display
- Loads open-source base rigged GLB mesh
- Automatic centering and scaling
- Smooth rotation animation
- Wireframe toggle (material property only)

## For Designers

This component shows:
- How to display a 3D mesh in a viewport
- Safe control patterns (wireframe, pause)
- Theme integration with 3D scenes
- Responsive layout for 3D visualizations
- What controls to **exclude** when protecting proprietary algorithms

## License

PolyForm Noncommercial 1.0.0 - See main repository LICENSE file.

---

**Note**: This component is part of the Lighthouse Portal Public Design System. The actual body morphing algorithms, hormone calculations, and measurement formulas remain proprietary and are not included in this public repository.
