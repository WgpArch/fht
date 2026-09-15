# Look & Feel (Theming)

The entire setup revolves around the **Crimson Rain** aesthetic, focusing on deep dark tones with vibrant red accents.

## 🎨 Color Palette

| Role | Hex Code | Description |
| :--- | :--- | :--- |
| **Accent** | `#D32F2F` | Vibrant Crimson (Used for Waybar accents, focused borders) |
| **Background** | `#1A1A1A` | Muted Dark (Base background for transparency) |
| **Normal Border** | `#2B2B2B` | Subtle border for unfocused windows |
| **Focused Border** | `#D0D0D0` | Bright border for the active window |

## 🖼️ Wallpaper

Managed by `swaybg` via the `autostart` array in `compositor.toml`:
```toml
"swaybg -i ~/.config/fht/walls/Rain.jpg -m fill"
