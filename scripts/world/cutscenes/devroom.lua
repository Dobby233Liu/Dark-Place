return {
    brandon = function(cutscene, event)
        cutscene:showNametag("Brandon")
        if not Game:getFlag("brandon_talkedto") then
            if cutscene:getCharacter("kris") then
                cutscene:text("* Well,[wait:5] if it isn't Kris Deltarune themself.", "happy", "brandon")
                cutscene:showNametag("Susie")
                cutscene:text("* Okay,[wait:5] first of all,[wait:5] that isn't their last name.", "annoyed", "susie")
                cutscene:text("* Second of all,[wait:5] how the hell do you know their name?", "sus_nervous", "susie")
                cutscene:showNametag("Brandon")
                cutscene:text("* Eh,[wait:5] that isn't really important.", "happy", "brandon")
                cutscene:text("* Anyways...", "neutral", "brandon")
            end
            cutscene:text("* It's so cool that you guys showed up here.", "happy", "brandon")
            if cutscene:getCharacter("dess") then
                cutscene:text("* ... Minus one of you...", "miffed", "brandon")
                cutscene:showNametag("Dess")
                cutscene:text("* Gee I wonder who that could be lol", "condescending", "dess")
                cutscene:showNametag("Brandon")
            end
            cutscene:text("* Hey,[wait:5] could I join the party?", "happy", "brandon")
        else
            cutscene:text("* So,[wait:5] did you change your mind?", "happy", "brandon")
        end
        cutscene:hideNametag()
        local opinion = cutscene:choicer({"Yes", "No"})
        if opinion == 1 then
            cutscene:showNametag("Brandon")
            cutscene:text("* Nice,[wait:5] thanks!", "happy", "brandon")
            if #Game.party >= Game:getFlag("party_max") then
                cutscene:text("* Hold on,[wait:5] it looks like you've got a full party.", "neutral", "brandon")
                cutscene:text("* Well,[wait:5] I'll still be in your party.", "happy", "brandon")
                cutscene:text("* Just in the \"reserves\",[wait:5] so to speak.", "neutral", "brandon")
                cutscene:text("* If you want me to help in battles,[wait:5] head to the Party Room.", "happy", "brandon")
                event:setFacing("right")
                cutscene:text("* Go straight that way,[wait:5] it should be the first door on your left.", "happy", "brandon")
                event:setFacing("down")
                cutscene:text("* Cya!", "happy", "brandon")
                cutscene:hideNametag()
                cutscene:walkTo(event, -100, event.y + 50, 3, "left")
                cutscene:wait(2)
            else
                cutscene:hideNametag()
                Game:addPartyMember("brandon")
                Game:setFlag("brandon_party", true)
                event:convertToFollower(#Game.party)
                cutscene:attachFollowers()
                cutscene:text("* Brandon joined the party.")
                cutscene:wait(0.5)
            end
            Game:setFlag("brandon_inparty", true)
            Mod:unlockPartyMember("brandon")
        else
            cutscene:showNametag("Brandon")
            cutscene:text("* Ah,[wait:5] okay then.", "frown", "brandon")
            cutscene:text("* Well,[wait:5] I'm always here if you change your mind.", "happy", "brandon")
            Game:setFlag("brandon_talkedto", true)
        end
        cutscene:hideNametag()
    end,
	charshop = function(cutscene, event)
	
		if Game.inventory:hasItem("mistcard") then
			cutscene:showNametag("Char")
			cutscene:text("* Thank you lots.")
		else
		
			if not Game:getFlag("gotCharQuest1") then
				cutscene:showNametag("Char")
				cutscene:text("* Heya there.")
				
				if cutscene:getCharacter("susie") then
					cutscene:showNametag("Susie")
					cutscene:text("* So uhh...", "neutral_side", "susie")
					cutscene:text("* Who are you?", "neutral", "susie")
				else
					cutscene:hideNametag()
					cutscene:text("* (You ask him who he is.)")
				end
				
				cutscene:showNametag("Char")
				cutscene:text("* Oh, I'm Char.[wait:10]\n* Got kicked out of the main area so now I'm in the party room.")
				
				if cutscene:getCharacter("dess") then
					cutscene:showNametag("Dess")
					cutscene:text("* Oh yo me too", "condescending", "dess")
					cutscene:showNametag("Char")
					cutscene:text("* ...")
				end
				
				if cutscene:getCharacter("susie") then
					cutscene:showNametag("Susie")
					cutscene:text("* So why did you get kicked out?", "neutral", "susie")
				else
					cutscene:hideNametag()
					cutscene:text("* (You asked why he got kicked out.)")
				end
				
				cutscene:showNametag("Char")
				cutscene:text("* Oh,[wait:5] I set fire to a table by accident.")
				cutscene:text("* But to be honest...")
				cutscene:text("* I think the decision to outright ban me was due to my part in helping to create Dess.")
				
				if cutscene:getCharacter("dess") then
					cutscene:showNametag("Dess")
					cutscene:text("* Thank ya for that", "heckyeah", "dess")
					cutscene:showNametag("Char")
					cutscene:text("* Yeah,[wait:5] sure,[wait:5] whatever.")
				end
				
				cutscene:text("* Also by the way I'm not technically supposed to be here either.")
				cutscene:text("* Please don't tell them I'm here.")
				
				if cutscene:getCharacter("susie") then
					cutscene:showNametag("Susie")
					cutscene:text("* Uhh,[wait:5] sure alright.", "nervous", "susie")
					cutscene:showNametag("Char")
				end
				
				
				cutscene:text("* Anyways...")
				
				cutscene:text("* That reminds me.[wait:10]\n* Trouble's afoot.")
				
				if cutscene:getCharacter("susie") then
					cutscene:showNametag("Susie")
					cutscene:text("* Hm?", "neutral", "susie")
					cutscene:showNametag("Char")
				end
				
				cutscene:text("* So like... there's this big forest right?")
				cutscene:text("* An uh,[wait:5] I was kinda just walking around in it when the fog suddenly got real dense.")
				cutscene:text("* Then the locals started to freak the heck out,[wait:5] so I took off.")
				cutscene:text("* I had a friend over there,[wait:5] and I don't quite like the thought of them being hurt.")
				cutscene:text("* You guys are like,[wait:5] heroes right?[wait:10]\n* Can you go take a look at it?")
				
				if cutscene:getCharacter("susie") then
					cutscene:showNametag("Susie")
					cutscene:text("* I guess we'll see what we can do??", "neutral_side", "susie")
				else
					cutscene:hideNametag()
					cutscene:text("* (You agreed without thinking about it for some reason.)")
				end
				
				cutscene:showNametag("Char")
				cutscene:text("* Great,[wait:10] you're the best.")
				
				cutscene:text("* Oh yeah, and [color:yellow]the code to get there is [color:blue]UWFOREST[color:reset].")
				
				cutscene:hideNametag()
				Game:setFlag("gotCharQuest1", true)
			else
				cutscene:showNametag("Char")
				cutscene:text("* Any updates yet?")
				
				if not Game:getFlag("finishedCharQuest1") then
					
					if cutscene:getCharacter("susie") then
						cutscene:showNametag("Susie")
						cutscene:text("* Nope.", "neutral", "susie")
					else
						cutscene:hideNametag()
						cutscene:text("* (You explain the current status.")
					end
					
					cutscene:showNametag("Char")
					cutscene:text("* Oh,[wait:10] dang.")
					
				else
					if cutscene:getCharacter("susie") then
						cutscene:showNametag("Susie")
						cutscene:text("* Yeah![wait:10] We fought a big ghost thing!", "surprise_smile", "susie")
					else
						cutscene:hideNametag()
						cutscene:text("* (You explain the current status.")
					end
					
					cutscene:showNametag("Char")
					cutscene:text("* Oh,[wait:5] sick.")
					cutscene:text("* Oh man,[wait:5] that must've been a lot of trouble though.")
					cutscene:text("* Lemmie see if I have anything on me...")
					cutscene:text("* ...[wait:10] oh,[wait:5] I see.")
					cutscene:text("* Here, take this.")
					
					local canTakeCard = Game.inventory:addItem("mistcard")
					
					if canTakeCard then
						cutscene:hideNametag()
						Assets:playSound("item")
						cutscene:text("* (You got the MistCard.)")
						cutscene:showNametag("Char")
						cutscene:text("* Thank you lots.")
					else
						cutscene:text("* ...")
						cutscene:text("* You don't have any more room for key items??")
						cutscene:text("* Man,[wait:5] what the hell even is this mod anymore if you accidentally see this text in-game.")
					end
				end
				
				
			end
		
		end
			
		cutscene:hideNametag()
	end,
    simbel = function(cutscene, event)
        local simbel = cutscene:getCharacter("simbel")
        local leader = Game.world.player
        local susie = cutscene:getCharacter("susie")

        cutscene:showNametag("Sam")
        cutscene:text("* ...", "phone_moment", "sam")
        if not Game:getFlag("interact_once_sam", false) then
            cutscene:text("* .....", "phone_moment", "sam")

            if susie then
                cutscene:showNametag("Susie")
                cutscene:text("* Uh...[wait:3] Hello?", "neutral", "susie")
                cutscene:showNametag("Sam")
            else
                cutscene:text("..?", "talk_look_away", "sam")
            end

            local s_facing = "left"
            if leader.facing == "down" then
                s_facing = "up"
            elseif leader.facing == "left" then
                s_facing = "right"
            else
                s_facing = "down"
            end

            simbel:setFacing(s_facing)

            cutscene:text("* A-[wait:2]Ah![wait:3] Hello!", "surprised_blush", "sam")
            cutscene:text("* Sorry,[wait:2] I was daydreaming...[wait:3] kinda?[wait:3] If time even exists here.", "shy_blush", "sam")

            if susie then
                cutscene:showNametag("Susie")
                cutscene:text("* Uh..[wait:3] Okay, I guess.", "neutral_side", "susie")
                cutscene:showNametag("Sam")
            end

            cutscene:text("* You guys are like,[wait:2] the legends of the Delta Rune, right?", "talk_look_away", "sam")

            if not cutscene:getCharacter("kris") then
                cutscene:text("* Actually wait,[wait:2] no,[wait:2] you're not Kris.", "dead_inside_b", "sam")
                if not susie then
                    cutscene:text("* Neither are you Susie actually...", "dead_inside", "sam")
                    cutscene:text("* Well that's a complete failure of an introduction...", "dead_inside", "sam")
                    cutscene:text("* ...", "huh_b", "sam")
                else
                    cutscene:showNametag("Susie")
                    if Game:getFlag("brandon_talkedto") then
                        cutscene:text("* Wait,[wait:2] how do you all know Kris's name??", "angry", "susie")
                    else
                        cutscene:text("* How do you know Kris's name?", "nervous_side", "susie")
                    end
                    cutscene:showNametag("Sam")
                    cutscene:text("* That's a long story I don't have the energy to explain.", "huh", "sam")
                end
            else
                if not susie then
                    cutscene:text("* Well uh... Without Susie, actually.")
                    cutscene:text("* H-[wait:2]Hey,[wait:2] don't look at me like that.", "shy_look_away", "sam")
                    cutscene:text("* The reason why I know her name is totally fine I swear!", "shy_look_away", "sam")
                else
                    cutscene:text("* But this your prophecy,[wait:2] uh..[wait:3] turned out fake...", "talk_look_away", "sam")
                    cutscene:text("* Can we still call you guys the heroes of the legend?", "talk_look_away", "sam")
                    cutscene:showNametag("Susie")
                    cutscene:text("* I mean...[wait:3] You've got a point.", "neutral", "susie")
                    cutscene:text("* But even if the prophecy means nothing,[wait:2] we're still the Delta Warriors,[wait:2] you know?", "neutral_side", "susie")
                    cutscene:text("* We're still gonna go on crazy adventures together,[wait:2] no matter what!", "smirk", "susie")
                    cutscene:text("* ...", "smirk", "susie")
                    cutscene:text("* Kris,[wait:1] stop with that little smile of yours!!", "angry_c")
                    cutscene:showNametag("Sam")
                    cutscene:text("* Ha ha![wait:3] Yeah,[wait:2] I guess you guys are fine even without the prophecy.", "eyes_closed_happy", "sam")
                end
            end
            cutscene:text("* So uh...[wait:2] Do you want to talk about something?", "shy_look_away", "sam")
            Game:setFlag("interact_once_sam", true)
        else
            local s_facing = "left"
            if leader.facing == "down" then
                s_facing = "up"
            elseif leader.facing == "left" then
                s_facing = "right"
            elseif leader.facing == "up" then
                s_facing = "down"
            end
            print(leader.facing, s_facing)

            simbel:setFacing(s_facing)
            cutscene:text("* What's up?", "talk_look_away", "sam")
        end
        cutscene:hideNametag()
        local choices = {"Talk", "Party"}
        if Game:getFlag("meet_jeku", false) then
            table.insert(choices, "Jeku")
        end
        table.insert(choices, "Nope")
        local c = cutscene:choicer(choices)
        cutscene:showNametag("Sam")
        if c == 1 then
            cutscene:text("* This world is pretty cool,[wait:2] honestly.", "talk_happy", "sam")
            cutscene:text("* Sometimes it feels like nothing more than a few ideas coming together.", "talk_happy_look_side", "sam")
            cutscene:text("* And sometimes it feels like a whole universe got linked to this one.", "happy_look_side", "sam")
            cutscene:text("* Imagination is just that powerful,[wait:2] I guess.[wait:3] Wouldn't you agree?", "eyes_closed_happy", "sam")
        elseif c == 2 then
            cutscene:text("* Huh?[wait:3] You want me to join your party?", "surprised_b", "sam")
            cutscene:text("* Yeah no,[wait:2] I'm no good in a fight.", "shy_look_away", "sam")
            cutscene:text("* Well I do have powerful healing and defensive magic...", "whoops", "sam")
            cutscene:text("* But I'm more of the peaceful type of guy,[wait:2] you know?", "unsure", "sam")
            local first_word = "But"
            if Game:getFlag("weird") then
            	cutscene:text("* And you're not really set on a right path,[wait:2] am I wrong?", "neutral", "sam")
            elseif Game:getFlag("library_kills", 0) > 0 and Game:getFlag("library_kills", 0) <= 2 then
                cutscene:text("* And you don't seem to be the type to make peace, aren't you?", "talk_look_away", "sam")
            else
                local love = Mod:getPartyLove()

                if love >= 19 then
                    cutscene:text("* And I really don't like the way you're looking at me.", "scared_look_away", "sam")
                elseif love >= 15 then
                    cutscene:text("* And uh.. You look like you could stab me at any moment so...", "shy_look_away", "sam")
                elseif love >= 12 then
                    cutscene:text("* And if the blood and dust on your hand is any indication...", "unsure", "sam")
                elseif love >= 10 then
                    cutscene:text("* And you look too miserable for peace, to be honest...", "phone_moment", "sam")
                elseif love >= 5 then
                    cutscene:text("* And you're, uh... Pretty bad, actually, at peace, to be honest.", "huh", "sam")
                elseif love >= 2 then
                    cutscene:text("* And uh.. You don't seem to consider peace as an option, do you?", "shy_look_away", "sam")
                else
                    first_word = "Well"
                    cutscene:text("* Oh wait,[wait:2] you seems to be pretty peaceful too actually.", "shy_look_away", "sam")
                end
            end
            cutscene:text("* "..first_word.." even then,[wait:2] I won't join your party for now.", "neutral", "sam")
            cutscene:text("* You could say it's because of a skill issue.", "dead_inside_b", "sam")
        elseif c == 3 then
            if #choices == 4 then
                cutscene:text("* Oh so you have met Jeku.", "talk_look_away", "sam")
                cutscene:text("* He's uh...[wait:3] A pretty unstable guy,[wait:2] right?", "whoops", "sam")
                cutscene:text("* He's kinda out of my control so just don't mess with him too much.", "unsure", "sam")
                cutscene:text("* I think he's nice but he got powers that can change reality itself.", "talk_look_away", "sam")
                cutscene:text("* Not the type of person you want to go against,[wait:2]you know?", "unsure", "sam")
                if Game:getFlag("jekukilled", false) then
                    cutscene:text("* Actually, you uh... Already found out by yourself, didn't you?", "whoops", "sam")
                    cutscene:text("* Yeah, I can see it in the way you look at me.", "surprised_b", "sam")
                    cutscene:text("* That look that screams \"No kidding?\".", "talk_look_away", "sam")
                    cutscene:text("* Not sure what he did to you before, but [color:red]he can probably do worse now[color:reset].", "unsure", "sam")
                    cutscene:text("* So you should let him alone.", "shy_look_away", "sam")
                    Game:setFlag("allow_shop_fight", true)
                else
                    cutscene:text("* So just stay out of his reach,[wait:2] if it's even possible.", "shy_look_away", "sam")
                end
                cutscene:text("* He'll probably just go one day to another one of my projects anyway.", "happy_look_side", "sam")
                cutscene:text("* Huh?[wait:4] What about his shop?", "surprised_b", "sam")
                cutscene:text("* Wait,[wait:2] he made a SHOP??[wait:5] Just that??", "surprised", "sam")
                cutscene:text("* I kinda expected worse of him,[wait:2] to be honest.", "talk_look_away", "sam")
                cutscene:text("* Well I guess he can still do whatever he wants though...", "huh", "sam")
                cutscene:text("* Don't take what the game doesn't allow for granted.", "talk_look_away", "sam")
                cutscene:text("* ...[wait:5]Oh yeah,[wait:2] the original question.", "shy_blush", "sam")
                cutscene:text("* Well I don't know,[wait:2] maybe someone else will replace him?", "shy_look_away", "sam")
            else
                cutscene:text("* Oh,[wait:2] okay.", "huh_b", "sam")
            end
        elseif c == 4 then
            cutscene:text("* Oh,[wait:2] okay.", "huh_b", "sam")
        end
        simbel:setFacing("down")
        cutscene:hideNametag()
    end,
    wardrobe = function(cutscene, event)
        local leader = Game.world.player
        if cutscene:getMarker("wardrobe_unstuck") and event then
        cutscene:walkTo(leader, "wardrobe_unstuck", 0.5, "up", true)
        cutscene:detachFollowers()
        end
        cutscene:text("* (It's a wardrobe.)\n* (What drawer would you like to open?)")

        local menu = cutscene:choicer({ "Party", "Costumes" })

        if menu == 1 then
            cutscene:interpolateFollowers()
            cutscene:attachFollowers()
            cutscene:after(function()
                Game.world:openMenu(DarkPartyMenu())
            end)
        else
            cutscene:interpolateFollowers()
            cutscene:attachFollowers()
            cutscene:after(function()
                Game.world:openMenu(Costumes())
            end)
        end
    end,
	dumbie = function(cutscene, event)
        if not Game:getFlag("dumbie_talkedto") then
            local dumbie = cutscene:getCharacter("dumbie")
            cutscene:showNametag("Dummy?")
            cutscene:text("* heya", "heeey", "dumbie")
			cutscene:showNametag("Susie")
			cutscene:text("* Uh,[wait:5] hey?", "sus_nervous", "susie")
			cutscene:showNametag("Dumbie")
			cutscene:text("* how are you doing on this fine night", "heeey", "dumbie")
			cutscene:text("* Nothing,[wait:5] i guess", "sus_nervous", "susie")
			cutscene:text("* cool", "normal", "dumbie")
			cutscene:hideNametag()
            Game:setFlag("dumbie_talkedto", true)
        elseif Game:getFlag("dumbie_talkedto") then
            local dumbie = cutscene:getCharacter("dumbie")
            cutscene:showNametag("Dumbie")
            cutscene:text("* hey did you see kris deltarune /srs", "suspect", "dumbie")
            cutscene:hideNametag("Dumbie")
	        local opinion = cutscene:choicer({"Yes", "No"})
			if opinion == 1 then
			    cutscene:showNametag("Dumbie")
			    cutscene:text("* show me where they are", "veryhappy", "dumbie")
                if #Game.party >= Game:getFlag("party_max") then
                    cutscene:text("* wait you've a bunch of friends i can only be friend with persons with at most " .. (Game:getFlag("party_max") - 1) .. " friends", "confused", "dumbie")
                    cutscene:text("* well I'll be here if you need me.", "normal", "dumbie")
                    cutscene:hideNametag()
                    Assets.playSound("slidewhist")
                    cutscene:slideTo(event, event.x, -100, 2)
                    cutscene:wait(1)
                else
			        Game:addPartyMember("dumbie")
                    Game:setFlag("dumbie_party", true)
                    event:convertToFollower(#Game.party)
			        cutscene:hideNametag()
			        cutscene:attachFollowers()
			        cutscene:text("* Dumbie joined the party.")
			        cutscene:wait(0.5)
                end
			    Game:setFlag("dumbie_inparty", true)
                Mod:unlockPartyMember("dumbie")
            else
			    cutscene:showNametag("Dumbie")
			    cutscene:text("* fuk u", "happy", "dumbie")
			    cutscene:hideNametag()
            end
		end
    end,
    starbeans = function(cutscene, event)
        cutscene:showNametag("Alexa")
		cutscene:text("[voice:alexa]* Oh,[wait:5] hello![wait:5]\n* Welcome to the Starbeans Cafe!")
		if not Game:getFlag("starbeans_first") then
			Game:setFlag("starbeans_first", true)
			for k,v in pairs(Game.party) do
				if v.id == "YOU" then
					cutscene:hideNametag()
					cutscene:wait(Game.world.music:fade(0, 0.5))
					cutscene:wait(1)
					Assets.playSound("croak")
					cutscene:wait(1)
					cutscene:wait(Game.world.music:fade(1, 0.5))
					cutscene:wait(1)
					cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* Okay...?")
				elseif v.id == "kris" then
				
				elseif v.id == "susie" then
				
				elseif v.id == "noelle" then
				
				elseif v.id == "dess" then
                    cutscene:showNametag("Dess")
                    cutscene:text("* Holy fuck is that Alexa Greene from hit indie game Deoxynn??????", "wtf", "dess")
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* ... What.")
                    cutscene:showNametag("Dess")
                    cutscene:text("* yeah can I get uhhhhhhhhhhhhhhhh", "calm", "dess")
                    cutscene:showNametag("Dess", {top = true, right = false})
                    -- noskip because fuck you >:]
                    cutscene:text("[noskip]* large double double frappechino mocha extra sugar cappichino with frosting and sprinkles with a cherry on top and a boston cream donut with extra frosting and a chocolate chip muffin and a raisin oatmeal cookie", "kind", "dess", {top = true})
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* ... We serve coffee here,[wait:5] ma'am.")
				elseif v.id == "brandon" then
                    cutscene:showNametag("Brandon")
                    cutscene:text("* Well this is kinda awkward.", "shock", "brandon")
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* Hm?[wait:10]\n* What do you mean?")
                    cutscene:showNametag("Brandon")
                    cutscene:text("* Well I mean I made you kill a bunch of people,[wait:5] remember?", "neutral_side", "brandon")
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* Uh,[wait:5] no????")
                    cutscene:showNametag("Brandon")
                    cutscene:text("* Ah so that's not canon in this mod?[wait:10] Cool.", "neutral", "brandon")
                    cutscene:showNametag("Alexa")
                    cutscene:text("[voice:alexa]* What???")
                    cutscene:text("[voice:alexa]* Are you okay sir?[wait:10] Er,[wait:5] I mean,[wait:5] ma'am?[wait:10] Uh,[wait:5] sir-ma'am?")
                    cutscene:showNametag("Brandon")
                    cutscene:text("* I don't care which one you use.", "happy", "brandon")
                    cutscene:text("* Just please don't call me sir-ma'am,[wait:5] that just sounds dumb.", "dissapointed", "brandon")
                    cutscene:text("* And to answer your question...", "neutral_side", "brandon")
                    cutscene:text("* I have absolutely zero clue myself.", "grin", "brandon")
                    cutscene:showNametag("Alexa")
                    cutscene:text("[voice:alexa]* Oooookay then.")
				elseif v.id == "dumbie" then
				
				elseif v.id == "ostarwalker" then
				
				elseif v.id == "berdly" then
				
				elseif v.id == "bor" then
				
				elseif v.id == "robo_susie" then
				
				elseif v.id == "nonyo" then
				
				elseif v.id == "iphone" then
				
				elseif v.id == "frisk2" then
				
				elseif v.id == "alseri" then
				
				elseif v.id == "jamm" then
					if not Game:getFlag("dungeonkiller") then
						cutscene:showNametag("Jamm")
						cutscene:text("* Wait,[wait:5] Alexa?[wait:5]\n* You work here?", "neutral", "jamm")
						cutscene:showNametag("Alexa")
						cutscene:text("[voice:alexa]* Actually,[wait:5] Director,[wait:5] I own this cafe!")
						cutscene:text("[voice:alexa]* Remember how I've been telling you I need more money for stuff?")
						cutscene:showNametag("Jamm")
						cutscene:text("* Vaguely,[wait:5] if anything.", "nervous_left", "jamm")
						cutscene:showNametag("Alexa")
						cutscene:text("[voice:alexa]* Well,[wait:5] it turns out D$ can be converted to Coins!")
						cutscene:showNametag("Jamm")
						cutscene:text("* Good for you,[wait:5] Alexa!", "happy", "jamm")
						cutscene:text("* But...[wait:5]\n* What about this room?", "neutral", "jamm")
						cutscene:showNametag("Alexa")
						cutscene:text("[voice:alexa]* The shopkeeper outside is letting me run the place.")
						cutscene:text("[voice:alexa]* I don't really get how the current model is sustaining money...")
						cutscene:text("[voice:alexa]* But I'm happy as long as I make money from it!")
					else
						cutscene:showNametag("Alexa")
						cutscene:text("[voice:alexa]* Wait,[wait:5] Director,[wait:5] is that you?")
						cutscene:text("[voice:alexa]* Gosh,[wait:5] you look terrible...[wait:5]\n* What the fleck happened?")
						cutscene:showNametag("Jamm")
						cutscene:text("* ...Just get me a brew please.", "shaded_pissed", "jamm")
						cutscene:showNametag("Alexa")
						cutscene:text("[voice:alexa]* R-right...")
					end
				elseif v.id == "mario" then
                    cutscene:showNametag("Mario")
					cutscene:text("* Do you have any spaghetti here?", "main", "mario")
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* Um,[wait:5] no.[wait:5]\n* We only serve coffee.")
                    cutscene:showNametag("Mario")
					cutscene:text("* Where's my spaghetti!?", "main", "mario")
                    cutscene:showNametag("Alexa")
					cutscene:text("[voice:alexa]* I told you we don't have that stuff here!")
				end
			end
			cutscene:showNametag("Alexa")
		end
		if #Game.party == 1 then
			cutscene:text("[voice:alexa]* So![wait:5] How may I blend up your day?")
		else
			cutscene:text("[voice:alexa]* So![wait:5] How may I blend up your days?")
		end
		cutscene:hideNametag()
		local choice = cutscene:choicer({"Blend", "Nevermind"})
		if choice == 1 then
			cutscene:showNametag("Alexa")
			cutscene:text("[voice:alexa]* Sounds good![wait:5]\n* I'll get your blend ready soon!")
			cutscene:text("[voice:alexa]* Oh,[wait:5] but first,[wait:5] I'm required to ask something.")
			cutscene:text("[voice:alexa]* Want me to tell you about our StarB System?")
			cutscene:hideNametag()
			if cutscene:choicer({"Yes", "No need"}) == 1 then
				cutscene:showNametag("Alexa")
				cutscene:text("[voice:alexa]* Okay, here goes...")
				cutscene:text("[voice:alexa]* At Starbeans Cafe,[wait:5] you don't have to pay a cent for a blend!")
				cutscene:text("[voice:alexa]* Instead,[wait:5] you provide the ingredients for them.")
				cutscene:text("[voice:alexa]* ...Well,[wait:5] it's mostly beans,[wait:5] but...")
				cutscene:text("[voice:alexa]* Dig for beans and bring them here,[wait:5] and I'll blend them.")
				cutscene:text("[voice:alexa]* Simple enough,[wait:5] right?")
			end
			cutscene:showNametag("Alexa")
			cutscene:text("[voice:alexa]* So,[wait:5] what'll be your blend today?")
			cutscene:hideNametag()
			
			cutscene:after(function()
				Game.world:openMenu(BlendMenu())
			end)
		end
		cutscene:hideNametag()
    end,

    ---@param cutscene WorldCutscene
    shadowshop = function(cutscene, event)
        Game.world:shopTransition("shadowsalesman")
    end,
}
