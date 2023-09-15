local actor, super = Class(Actor, "mysteryman")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "Mystery Man"

    -- Width and height for this actor, used to determine its center
    self.width = 21
    self.height = 52

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {0, 42, 21, 10}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {1, 0, 0}

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "world/npcs/mysteryman"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "idle"

    -- Sound to play when this actor speaks (optional)
    self.voice = nil
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    self.animations = {
        ["idle"]        = {"mysteryman_1", 0, false},
        ["interact"]    = {"mysteryman_2", 0, false},
        ["fast"]        = {"mysteryman", 1/30, true},
        ["blaster"]     = {"blaster/gasterblaster_0", 0, false},
        ["blasterfire"] = {"blaster/gasterblaster", 1/30, false}
    }

    self.offsets = {
        ["blaster/gasterblaster"] = {-10, 0}
    }

    
end

return actor