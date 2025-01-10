
minetest.override_item("default:ice",{
    drawtype = "glasslike",
    use_texture_alpha = "blend",
    tiles = {"default_ice.png^[opacity:190"}
})



-- Registriere ein Snippet, um einen neuen Block zu erstellen
minetest.register_snippet("create_custom_block", function()
    minetest.register_node("custom:block", {
        description = "Custom Block",
        tiles = {"custom_block_texture.png"},
        groups = {cracky = 3, stone = 1},
        sounds = default.node_sound_stone_defaults(),
    })
    minetest.log("action", "Custom Block wurde registriert.")
end)

-- Führe das Snippet beim Start des Servers aus
minetest.register_on_mods_loaded(function()
    minetest.run_snippet("", "create_custom_block")
end)
```

In diesem Beispiel:

1. **Registriere ein Snippet**: Das Snippet `create_custom_block` registriert einen neuen Block namens `custom:block` mit einer Textur namens `custom_block_texture.png`, die bereits im Textur-Ordner des Spiels vorhanden sein sollte.

2. **Führe das Snippet aus**: Das Snippet wird ausgeführt, wenn alle Mods geladen sind, um den neuen Block beim Start des Servers zu registrieren.

Achte darauf, dass die Textur `custom_block_texture.png` in deinem Textur-Ordner vorhanden ist, damit der Block korrekt angezeigt wird. Viel Spaß beim Erstellen und Experimentieren mit deinen eigenen Blöcken in Minetest! 😊

Lass mich wissen, wenn du noch weitere Fragen hast oder Unterstützung benötigst.