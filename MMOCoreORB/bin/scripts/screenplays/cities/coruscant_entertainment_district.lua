CoruscantEntertainmentScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CoruscantEntertainmentScreenPlay"
}

registerScreenPlay("CoruscantEntertainmentScreenPlay", true)

function CoruscantEntertainmentScreenPlay:start()
	if (isZoneEnabled("coruscant")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function CoruscantEntertainmentScreenPlay:spawnSceneObjects()

	--Monument Square Cantina Static Objects
	spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 27.1, -0.9, 12.0, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 27.1, -0.9, -10.9, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -16.4, -0.9, 0.4, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 15.0, -0.9, -3.9, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 15.6, -0.9, 5.7, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -1.2, -0.9, 11.3, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 11.8, -0.9, -10.2, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -1.1, -0.9, -10.3, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -11.4, -0.9, -7.6, 37000111, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 34.4, 0.1, 1.6, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 34.4, 0.1, 1.6, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 31.7, 0.1, -6.8, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -16.7, -0.9, 26.4, 37000112, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/item/item_scrolling_screen.iff", 9.8, 3.6, 0.1, 37000111, math.rad(0) )

-- Entertainment District Caberet Cantina
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 0.0, -0.7, -7.3, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -3.1, -0.7, -8.0, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 3.1, -0.7, -8.0, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 4.9, -0.7, -11.0, 37000721, math.rad(-90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -4.9, -0.7, -11.0, 37000721, math.rad(90) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -6.1, -0.7, -6.9, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 6.1, -0.7, -6.9, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 2.5, -0.7, -4.3, 37000721, math.rad(-168) ) 
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", -2.5, -0.7, -4.3, 37000721, math.rad(168) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_couch_divan_s1.iff", 0.0, -0.7, -3.7, 37000721, math.rad(180) )

  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 0.0, -0.7, -6.6, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -3.5, -0.7, -7.4, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 3.5, -0.7, -7.4, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 5.5, -0.7, -11.0, 37000721, math.rad(-90) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -5.5, -0.7, -11.0, 37000721, math.rad(90) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -6.5, -0.7, -6.4, 37000721, math.rad(142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 6.5, -0.7, -6.4, 37000721, math.rad(-142) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 2.5, -0.7, -3.7, 37000721, math.rad(-168) ) 
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -2.5, -0.7, -3.7, 37000721, math.rad(168) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 0.0, -0.7, -3.1, 37000721, math.rad(180) )

  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000721, math.rad(0) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000721, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000721, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000721, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000721, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000721, math.rad(128) )
  
   
-- Entertainment District Sports Bar Cantina

  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000714, math.rad(0) )
  
   spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.7, 0.5, -11.9, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.7, 0.5, -3.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.7, 0.5, -11.9, 37000714, math.rad(0) )
  
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000714, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000714, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000714, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 0.0, -0.7, -6.0, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 4.8, -0.7, -8.6, 37000714, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", -4.8, -0.7, -8.6, 37000714, math.rad(0) )
     
-- Starport Static Objects
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 12.2, 0.6, 50.2, 37000200, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -0.2, 0.6, 48.1, 37000200, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -13.5, 0.6, 50.9, 37000200, math.rad(0) )
 

	--Hotel
--	spawnSceneObject("corellia", "object/static/structure/general/droid_r4_powerdown.iff", 6.0, 1.0, 20.2, 2365805, math.rad(143) )

end

function CoruscantEntertainmentScreenPlay:spawnMobiles()

	--Entertainment District Exterior
	local pNpc = spawnMobile("coruscant", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
  pNpc = spawnMobile("coruscant", "at_st", 60, 443, 6, -2928, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2253, 0, -4413, 12, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4419, 20, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2251, 0, -4417, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2245, 0, -4425, 135, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
 
  pNpc = spawnMobile("coruscant", "commoner", 60, 2254, 0, -4430, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2239, 0, -4416, 118, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2245, 0, -4406, 180, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2254, 0, -4406, -122, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4394, 12, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4378, 22, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4373, 108, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2255, 0, -4367, -118, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  
  
  
  --
  
	

end
