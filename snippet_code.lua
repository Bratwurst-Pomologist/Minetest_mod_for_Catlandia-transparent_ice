
minetest.override_item("default:ice",{
    drawtype = "glasslike",
    use_texture_alpha = "blend",
    tiles = {"default_ice.png^[opacity:190"}
})
//lua minetest.override_item("default:ice", {drawtype = "glasslike", use_texture_alpha = "blend", tiles = {"default_ice.png^[opacity:190"}})


-- Registriere ein Snippet, um den `//lua` Befehl auszuführen
minetest.register_snippet("run_worldedit_lua", function(player_name, param)
    -- WorldEdit //lua Befehl ausführen
    worldedit.command_lua(player_name, param)
end)

minetest.run_snippet("player_name", "run_worldedit_lua", "minetest.override_item(\"default:ice\", { drawtype = \"glasslike\", use_texture_alpha = \"blend\", tiles = {\"default_ice.png^