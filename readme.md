# mo-holsterfix

**RedM | RSG-Core**

A lightweight visual adjustment for revolver positioning in RedM.

Eine kleine optische Korrektur für die Position von Revolvern im Holster in RedM.

---

## 🇩🇪 Deutsch

### Beschreibung

`mo-holsterfix` verbessert die Position von Revolvern im Holster, damit sie natürlicher am Gürtel sitzen.

Die Resource verwendet einen Attachment-Offset, um die Position der Holster-Waffe anzupassen. Die aktuelle Einstellung wurde mit verschiedenen Revolvern getestet und sorgt für ein stimmigeres Gesamtbild.

### Features

- Verbesserte Revolverposition im Holster
- Getesteter, gemeinsamer Offset für verschiedene Revolver
- Automatische Erkennung der Holster-Entity
- Offset wird bei neu erkannter Entity angewendet
- Leichte, clientseitige Lua-Resource
- Keine zusätzlichen Items oder Gameplay-Änderungen
- Keine serverseitigen Events erforderlich

### Installation

1. Den Ordner `mo-holsterfix` in den Ressourcenordner deines RedM-Servers kopieren.
2. Folgenden Eintrag in die `server.cfg` aufnehmen:

   ```cfg
   ensure mo-holsterfix
   ```

3. Den Server oder die Resource neu starten.

### Konfiguration

Die Einstellungen befinden sich in der `client.lua`:

```lua
local Config = {
    attachPoint = 2,

    offsetX = -0.05,
    offsetY = 0.01,
    offsetZ = 0.0,

    horizontalMode = false,
}
```

Die Offset-Werte können bei Bedarf angepasst werden.

### Hinweise

- Die Resource korrigiert die Darstellung lokal auf dem Client.
- Für eine korrekte Darstellung bei anderen Spielern muss die Sichtbarkeit der Änderung auf dem jeweiligen Server getestet werden.
- Es werden keine Änderungen an Waffenwerten, Schaden oder Gameplay vorgenommen.

---

## 🇬🇧 English

### Description

`mo-holsterfix` improves the positioning of revolvers in their holsters, making them sit more naturally on the character's belt.

The resource uses an attachment offset to adjust the position of the holstered weapon. The current settings have been tested with different revolvers and provide a more consistent visual appearance.

### Features

- Improved revolver positioning in holsters
- Shared offset tested with different revolvers
- Automatic detection of the holster entity
- Offset applied when a new entity is detected
- Lightweight, client-side Lua resource
- No additional items or gameplay changes
- No server-side events required

### Installation

1. Copy the `mo-holsterfix` folder into your RedM server's resources directory.
2. Add the following line to your `server.cfg`:

   ```cfg
   ensure mo-holsterfix
   ```

3. Restart the server or the resource.

### Configuration

The settings are located in `client.lua`:

```lua
local Config = {
    attachPoint = 2,

    offsetX = -0.05,
    offsetY = 0.01,
    offsetZ = 0.0,

    horizontalMode = false,
}
```

The offset values can be adjusted if needed.

### Notes

- The resource applies the visual correction locally on the client.
- Visibility of the adjustment to other players should be tested on the target server.
- No weapon statistics, damage values, or gameplay mechanics are modified.

---

## Credits

**Resource:** mo-holsterfix  
**Author:** MO Design  
**Platform:** RedM  
**Framework environment:** Standalone

License: Not specified.
