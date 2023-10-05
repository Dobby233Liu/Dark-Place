return {
	hifi = function(cutscene, event)
		cutscene:text("* (It's an hi-fi station.)")
		cutscene:text("* (A USB stick is plug in the station.)")
		cutscene:text("* (Turn on the station?)")
		if cutscene:choicer({"Yes", "No"}) == 1 then
			cutscene:text("* (You turn on the station and check the few songs available.)")
			if event.interact_count <= 1 then
				if cutscene:getCharacter("susie") then
					cutscene:text("* ...", "neutral_side", "susie")
					if Mod:getLeader().id == "susie" then
						cutscene:text("* Does anyone know any of these songs?", "neutral", "susie")
					else
						cutscene:text("* Do you know any of those songs, "..Mod:getLeader().name.."?", "neutral", "susie")
					end
					local real_world_member = cutscene:getCharacter("brandon") or cutscene:getCharacter("jamm") or nil
					if real_world_member then
						cutscene:text("* It's probably songs from where we come from.", "neutral", real_world_member)
						cutscene:text("* Oh.", "neutral_side", "susie")
						if Mod:getLeader().id == "susie" then
							cutscene:text("* Let's play one, I wanna see how much you guys' taste sucks!", "smile", "susie")
						else
							cutscene:text("* Hey "..Mod:getLeader().name..". Press play, I wanna see how much you guys' taste sucks!", "smile", "susie")
						end
					end
				end
			end
			cutscene:text("* (Play one of the songs?)")
			if cutscene:choicer({"Yes", "Please don't"})==2 then
				cutscene:text("* (You think of the possibility of a copyright strike and just turn off the station.)")
			else
				local song = love.math.random(1, 5)
				cutscene:text("* You select one of the song and press play.")
				Game.world.music:pause()
				if song == 1 then
					if not cutscene:getCharacter("kris") then
						cutscene:wait(1)
						Game.world.music:resume()
						cutscene:text("* (Sounds like a half-anime half-idol song.)")
					else
						cutscene:wait(0.25)
						if Mod:getLeader().id == "kris" then
							cutscene:text("* (You immediately turn off the station.)")
						else
							cutscene:text("* (Kris immediately turn off the station.)")
							cutscene:text("* (You're not even sure what type of song it was.)")
						end
					end
				elseif song == 2 then
					cutscene:wait(1)
					Game.world.music:resume()
					cutscene:text("* (Sounds like beeps and boops.)")
				elseif song == 3 then
					cutscene:wait(1)
					Game.world.music:resume()
					cutscene:text("* (Sounds like a upbeat song![wait:5]\n* Surely the lyrics don't have any dark theme.)")
				elseif song == 4 then
					cutscene:wait(1)
					cutscene:text("* (What the fuck.)")
					Game.world.music:resume()
				elseif song == 5 then
					if Utils.random(0, 100) <= 5 then
						cutscene:wait(2)
						Game.world.music:resume()
						cutscene:text("* (Sounds like a song about a girl that saw a ghost.)")
						cutscene:text("* (The song cuts abruptly just before the drop.)", {auto=true})
						Game.world.music:stop()
						Game.fader.alpha = 1
						cutscene:wait(5)
						for i,o in ipairs(Game.world.stage:getObjects(Interactable)) do
							if o.cutscene then
								o.cutscene = nil
							end
							if o.text then
								o.text = {}
							end
						end
						Game.world.map:getImageLayer("ghost").alpha = 1
						for i,member in ipairs(Game.party) do
							Game.world:getCharacter(member.id):setLayer(Game.world:getCharacter(member.id):getLayer()+1)
						end
						Game.fader.alpha = 0
					else
						Game.world.music:resume()
						cutscene:text("* (The song didn't even start.\n[wait:3]* Maybe it's corrupted.)")
					end
				end
			end
		end
	end,
	book = function(cutscene, event, player)
		cutscene:text("* (It's a very cool portal coming out of a book.)")
		cutscene:text("* (Put your head inside?)")
		if cutscene:choicer({"Yes", "No"}) == 1 then
			cutscene:text("* (You try to put your head inside of the portal.)")
			Assets.playSound("hurt")
			player:shake()
			cutscene:text("* (But you go right through it and hit the wall face first.)")
			cutscene:text("* (Whatever it is,[wait:2] it isn't ready to see your face yet.)")
		else
			cutscene:text("* (Yeah 'cause what if the portal closes while you have your head in??)")
		end
	end,
	sphere = function(cutscene, event)
		if not Game:getFlag("finished_sphere_quest", false) then
			cutscene:text("* (You have the feeling that this thing is not supposed to be here yet.)")
			cutscene:wait(2)
			Game.world:getEvent(3):explode()
			event:remove()
			cutscene:wait(2)
			cutscene:text("* (Much better.)")
		else
			cutscene:text("* (It's the Sphere.[wait:3] Hold in place and protected from any danger.)")
			cutscene:text("* (Will you dare touch it?)")
			if cutscene:choicer({"Touchy :D", "No touchy D:"})==1 then
				Assets.playSound("bell_bounce_short", 1.5)
				Assets.playSound("criticalswing", 1, 0.9)
				local sprites = {
					YOU = "fell_serious"
				}
				local leader = cutscene:getCharacter(Mod:getLeader().id)
				cutscene:detachFollowers()
				cutscene:detachCamera()
				local id = Mod:getLeader().id
				leader:setSprite(sprites[id] and sprites[id] or "battle/defeat")
				local x, y = leader.x, leader.y
				local angle = leader.facing
				if angle == "down" then
					y = leader.y-100
				elseif angle == "right" then
					x =  leader.x-100
				end
				cutscene:wait(cutscene:walkTo(leader, x, y, 0.6, nil, nil, "out-cubic"))
				cutscene:wait(2)
				cutscene:text("* (Not sure what else you were expecting.)")
				leader:resetSprite()
				leader:setFacing("down")
				local wait = cutscene:attachCamera()
				cutscene:wait(cutscene:attachFollowers())
				cutscene:wait(wait)
			else
				cutscene:text("* (Strong,[wait:2] the urge was.[wait:5] Resisted,[wait:2] you did.)")
			end
		end
	end
}