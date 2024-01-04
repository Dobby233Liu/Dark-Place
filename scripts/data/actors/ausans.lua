local actor, super = Class(Actor, "ausans")

function actor:init()
    super.init(self)

    -- Display name (optional)
    self.name = "deltatalefellrunedustyellowfellredtaleredswapshiftinkerrorkilldeathmegaultrasuper!sans"

    -- Width and height for this actor, used to determine its center
    self.width = 25
    self.height = 32

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    self.hitbox = {0, 16, 25, 16}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {1, 0, 0}

    -- Whether this actor flips horizontally (optional, values are "right" or "left", indicating the flip direction)
    self.flip = nil

    -- Path to this actor's sprites (defaults to "")
    self.path = "world/npcs/ausans"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "sans"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = "face/ausans"
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false

    -- Table of sprite animations
    self.animations = {
        ["shrug"] = {"shrug", 1, true},

        ["shrink"] = {"shrink", 0.075, false},
        ["grow"] = {"grow", 0.075, false, next="idle"},
        ["transform"] = {"transform", 0.1, false},
    }
    

    -- Table of sprite offsets (indexed by sprite name)
    self.offsets = {
        ["shrug"] = {-3, 0},
        ["idle"] = {0, 2},
        ["shrink"] = {1, 8}
    }

    self.taunt_sprites = {"shrug", "sleeping", "eyes", "wink"}
end

return actor