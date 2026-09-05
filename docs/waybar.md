# Waybar Configuration

Waybar is configured to provide a sheer, transparent, pill-shaped status bar with vibrant crimson accents, perfectly complementing the Crimson Rain theme.

## 📐 Layout

The configuration (`~/.config/fht/waybar/config.jsonc`) is split into three distinct modules:
- **Left**: Workspaces (1-12 indicators)
- **Center**: Active window title / application name
- **Right**: System tray, network, audio, battery, and clock

## 🎨 Styling

The styling (`~/.config/fht/waybar/style.css`) utilizes:
- `background-color: rgba(26, 26, 26, 0.7)` for the sheer transparent pill effect.
- `border-radius: 12px` for smooth, modern corners.
- `#D32F2F` (Crimson) for active workspace indicators and accent highlights.
- Muted borders to keep the focus on the content.
