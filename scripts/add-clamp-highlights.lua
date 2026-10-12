-- add_shader.lua
local function add_shader(shader_path)
    -- Obtiene la lista actual de shaders
    local shaders = mp.get_property_native("glsl-shaders")

    -- Si hay shaders, agrega el nuevo shader al principio
    if shaders then
        table.insert(shaders, 1, shader_path)
    else
        shaders = {shader_path}
    end

    -- Establece la nueva lista de shaders
    mp.set_property_native("glsl-shaders", shaders)
    mp.osd_message("Clamp_Highlights")
end

-- Asigna la función a un atajo de teclado
mp.add_key_binding("ctrl+9", "add-shader", function() add_shader("~~/shaders/Anime4K_Clamp_Highlights.glsl") end)