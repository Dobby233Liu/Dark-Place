local preview = {}

function preview:init(mod, button, menu)
    self.menu = menu or MainMenu
    button:setColor(1, 1, 1)
    button:setFavoritedColor(138/255, 138/255, 207/255)

    self.mod_id = mod.id
    self.base_path = mod.path.."/preview"
    local function p(f) return self.base_path .. "/" .. f end
    local function im(f) return love.graphics.newImage(p(f)) end

    self.particles = {}
    self.particle_interval = 0
    self.particle_tex = im("star.png")
    self.particle_interval_dess = Utils.random(1*2.2, 6.9*4*20*3, 0.25)
    self.particle_tex_dess = im("dess.png")

    local date = os.date("*t")
    if date.month == 4 and date.day == 1 then
        self.april_fools = true
        local function p_a(f) return self.base_path .. "/april_1/" .. f end
        local function im_a(f) return love.graphics.newImage(p_a(f)) end
        self.particle_tex = im_a("star.png")
    end

    if date.month == 4 and date.day == 20 then
        self.particle_tex = im("doobie.png")
    end

    self.gradient_pattern = im("gradient_pattern.png")
    self.gradient_pattern_quads = {}
    for i = 1, 10 do
        local part = 10 - (i - 1)
        local part_height = 8
        self.gradient_pattern_quads[part] = love.graphics.newQuad(
            0, self.gradient_pattern:getHeight()-i*part_height,
            self.gradient_pattern:getWidth(), part_height,
            self.gradient_pattern:getDimensions()
        )
    end
    self.gradient_color = Utils.hexToRgb("#45459E")
    if self.april_fools then
        self.gradient_color = Utils.hexToRgb("#BABA61")
    end
    table.remove(self.gradient_color, 4)
    self.gradient_siner = Kristal.getTime()

    self.naming_swellow = nil
    self.naming_swellow_timer = 0

    self.naming_sound = nil

    self.naming_video = nil
    self.naming_video_fade_phase = -1
    self.naming_video_fade_timer = 0
end

function preview:update()
    self.gradient_siner = self.gradient_siner + 0.2 * DTMULT

    local particle_to_remove = {}
    for _,particle in ipairs(self.particles) do
        particle.radius = Utils.approach(particle.radius, 0, DT)
        particle.y = particle.y - particle.speed * DTMULT

        if particle.radius <= 0 then
            table.insert(particle_to_remove, particle)
        end
    end
    for _,particle in ipairs(particle_to_remove) do
        Utils.removeFromTable(self.particles, particle)
    end

    self.particle_interval = self.particle_interval + DT
    if self.particle_interval >= 0.4 then
        self.particle_interval = 0
        local radius = Utils.random(2, 12)
        table.insert(self.particles, {
            type = "star",
            radius = radius, max_radius = radius,
            x = Utils.random(SCREEN_WIDTH), y = SCREEN_HEIGHT + radius,
            speed = 2 * Utils.random(0.5, 1)
        })
    end

    self.particle_interval_dess = Utils.approach(self.particle_interval_dess, 0, DT)
    if self.particle_interval_dess <= 0 then
        self.particle_interval_dess = Utils.random(1*2.2, 6.9*4*20*3, 0.25)
        table.insert(self.particles, {
            type = "dess",
            radius = 12, max_radius = 12,
            x = Utils.random(SCREEN_WIDTH), y = SCREEN_HEIGHT + 12,
            speed = 6 * Utils.random(0.5, 1)
        })
    end

    if self:isNameChosen("SWELLOW", true) then
        if not self.naming_swellow then
            self.naming_swellow = love.graphics.newImage(self.base_path.."/swellow.png")
        end
        self.naming_swellow_timer = self.naming_swellow_timer + DT
    else
        self.naming_swellow_timer = 0
    end

    local function setSound(file, type)
        if not self.naming_sound then
            self.naming_sound = love.audio.newSource(self.base_path.."/"..file, type or "stream")
            self.naming_sound:play()
        end
    end
    if self:isNameChosen("PAUL", false) then
        setSound("paul.ogg")
    elseif self:isNameChosen("YOU", false) then
        setSound("croakreverb.ogg", "static")
    elseif self.naming_sound then
        self.naming_sound:stop()
        self.naming_sound = nil
    end

    local function setVideo(file)
        if not self.naming_video then
            self.naming_video = love.graphics.newVideo(self.base_path.."/"..file..".ogv", {audio = true})
            self.naming_video:setFilter("linear", "linear")
            self.naming_video:play()
            self.naming_video_fade_phase = 0
        end
    end
    if self:isNameChosen("RICK", false) then
        setVideo(love.math.random(50) <= 12 and "the_new_rick_rolld" or "rickroll")
    elseif self:isNameChosen("ASRIEL", false) then
        setVideo("piles")
    elseif self.naming_video then
        self.naming_video_fade_phase = 1
    end
    if self.naming_video then
        if self.naming_video_fade_phase == 0 then
            self.naming_video_fade_timer = Utils.approach(self.naming_video_fade_timer, 1, 0.02*DTMULT)
        else
            self.naming_video_fade_timer = Utils.approach(self.naming_video_fade_timer, 0, 0.06*DTMULT)
            if self.naming_video_fade_timer == 0 then
                self.naming_video:pause()
                self.naming_video = nil
            end
        end
    end
    if self.naming_video then
        self.naming_video:getSource():setVolume(math.min(self.naming_video_fade_timer/0.2, 1) * 0.6)
        -- loop video
        if not self.naming_video:isPlaying() then
            self.naming_video:rewind()
            self.naming_video:play()
        end
    else
        self.naming_video_fade_phase = -1
        self.naming_video_fade_timer = 0
    end
end

function preview:draw()
    if self.fade <= 0 then return end

    if self.april_fools then
        love.graphics.setColor(1, 1, 1, self.fade)
    else
        love.graphics.setColor(0, 0, 0, self.fade)
    end
    love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

    local gradient_weave = math.sin(self.gradient_siner / 20)
    local gradient_pattern_width = self.gradient_pattern:getWidth() * 2
    local quad_amt = #self.gradient_pattern_quads
    for i = 0, SCREEN_WIDTH, gradient_pattern_width do
        local y = SCREEN_HEIGHT
        for j = 1, Utils.clamp(quad_amt--[[ - gradient_weave * quad_amt]], 1, quad_amt) do
            local j_ndx = Utils.clamp(math.floor(j - 1), 0, #self.gradient_pattern_quads - 1)
            local quad = self.gradient_pattern_quads[quad_amt - j_ndx]
            love.graphics.setColor(
                self.gradient_color[1], self.gradient_color[2], self.gradient_color[3],
                self.fade * (1 - (math.min(1, gradient_weave*5 + j/5) + j/5) * 0.6)
            )
            local x_scale, y_scale = 2, 2 - Utils.round((gradient_weave*10 - j_ndx/5) / 10, 1/50)
            y = y - 8*y_scale
            love.graphics.draw(self.gradient_pattern, quad, i, y, 0, x_scale, y_scale, 0, 0)
        end
    end

    love.graphics.setColor(1, 1, 1, self.fade)

    if self.naming_video then
        local vid_alpha = Utils.approach(0, 0.5, self.naming_video_fade_timer)

        love.graphics.setColor(0, 0, 0, vid_alpha * 0.8 * self.fade)
        love.graphics.rectangle("fill", 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)

        love.graphics.setColor(1, 1, 1, vid_alpha * self.fade)
        local vid_w, vid_h = self.naming_video:getWidth(), self.naming_video:getHeight()
        local vid_scale = math.min(SCREEN_WIDTH/vid_w, SCREEN_HEIGHT/vid_h)
        love.graphics.draw(self.naming_video, SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 0, vid_scale, vid_scale, vid_w/2, vid_h/2)
	end

    for _,particle in ipairs(self.particles) do
        love.graphics.setColor(1, 1, 1, particle.radius / particle.max_radius * self.fade)
        local particle_tex = self.particle_tex
        local particle_ox, particle_oy = 0, 0
        if particle.type == "dess" then
            particle_tex = self.particle_tex_dess
            particle_ox, particle_oy = particle_tex:getWidth()/2, particle_tex:getHeight()/2
        end
        love.graphics.draw(particle_tex, particle.x, particle.y, particle.radius, 1, 1, particle_ox, particle_oy)
    end

    if self:isNameChosen("SWELLOW", true) and self.naming_swellow then
        local alpha = math.min((self.naming_swellow_timer - 1.8) * 0.2 + self:getNamingScreen().whiten, 0.8)
        local xs_inc = math.max(0, (self.naming_swellow_timer - 3) * 0.02 + self:getNamingScreen().whiten)
        love.graphics.setColor(1, 1, 1, alpha * self.fade)
        love.graphics.draw(self.naming_swellow,
            SCREEN_WIDTH/2, SCREEN_HEIGHT/2-30, 0,
            2 + xs_inc, 2,
            self.naming_swellow:getWidth()/2, self.naming_swellow:getHeight()/2
        )
    end

    if DEBUG_RENDER then
        love.graphics.setColor(0, 0.75, 1, 1)
        local font = Assets.getFont("main")
        love.graphics.setFont(font)
        local namer = self:getNamingScreen()
        local dbg = string.format(
            [[fade=%.2f sel=%s%s

            bright=%s
            gra_s=%.2f
            p_int=%.2f dess=%.2f

            namer : %s name=%s
            swellow=%s(t=%.2f nam_f=%.2f)
            sound=%s
            video=%s(p=%d f=%.2f)]],
            self.fade, self.menu.selected_mod and self.menu.selected_mod.id, TARGET_MOD and string.format("(%s)", TARGET_MOD) or "",
            self.april_fools and "y" or "n",
            self.gradient_siner,
            self.particle_interval, self.particle_interval_dess,
            namer and namer.state or "", namer and string.upper(namer.name) or "",
            self.naming_swellow and "y" or "n", self.naming_swellow_timer, namer and namer.whiten or 0,
            self.naming_sound and "y" or "n",
            self.naming_video and "y" or "n", self.naming_video_fade_phase, self.naming_video_fade_timer
        )
        love.graphics.printf(dbg, 0, 0, SCREEN_WIDTH*2, "right", 0, 0.5, 0.5)
    end
end

---@return FileNamer?
function preview:getNamingScreen()
    if not (self.menu.selected_mod
        and self.menu.selected_mod.id == self.mod_id
        or TARGET_MOD == self.mod_id)
    then return nil end
    return
        (self.menu.file_name_screen and self.menu.file_name_screen.file_namer)
        or (self.menu.default_name_screen and self.menu.default_name_screen.file_namer)
        or self.menu.naming_screen
end

function preview:isNameChosen(name, include_fadeout)
    local naming_screen = self:getNamingScreen()
    return naming_screen
        and string.upper(naming_screen.name) == string.upper(name)
        and (
            naming_screen.state == "CONFIRM"
            or (include_fadeout and naming_screen.state == "FADEOUT")
        )
end

return preview