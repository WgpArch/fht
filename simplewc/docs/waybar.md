# Waybar Configuration

Because `simplewc` uses the `dwl-ipc-unstable-v2` protocol for its workspaces, the standard `wlr/workspaces` module will not work. 

Instead, this configuration uses the **`dwl/tags`** module to display the 12 persistent workspaces.

```json
    "dwl/tags": {
        "num-tags": 12,
        "format": "{icon}",
        "on-click": "activate"
    }
