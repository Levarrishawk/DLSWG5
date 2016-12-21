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
 

 --          :::: Starport District ::::
  
  -- Starport District Cantina
  
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", -11.7, 0.5, -11.9, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/all/frn_all_table_s03.iff", 11.7, 0.5, -11.9, 37000316, math.rad(0) )
  
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.7, 0.5, -11.9, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.7, 0.5, -3.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.7, 0.5, -11.9, 37000316, math.rad(0) )
  
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -1.2, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -5.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -4.7, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -2.0, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -9.9, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -11.8, 0.5, -14.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -13.3, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", -13.0, 0.5, -10.6, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -1.2, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -5.2, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -4.7, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -2.0, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -9.9, 37000316, math.rad(180) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 11.8, 0.5, -14.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -13.3, 37000316, math.rad(51) )
  spawnSceneObject("coruscant", "object/tangible/furniture/modern/chair_modern_style_01.iff", 13.0, 0.5, -10.6, 37000316, math.rad(128) )
  
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 0.0, -0.7, -6.0, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", 4.8, -0.7, -8.6, 37000316, math.rad(0) )
  spawnSceneObject("coruscant", "object/tangible/gambling/wheel/roulette.iff", -4.8, -0.7, -8.6, 37000316, math.rad(0) )


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
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2247, 0, -4440, 2, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2239, 0, -4436, 100, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4445, -126, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4452, 179, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2246, 0, -4362, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")

  pNpc = spawnMobile("coruscant", "commoner", 60, 2243, 0, -4478, 55, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2249, 0, -4476, -132, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2253, 0, -4487, 177, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4496, -155, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2246, 0, -4502, 97, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2241, 0, -4512, -1, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2257, 0, -4515, -176, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, 2252, 0, -4539, -18, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2238, 0, -4546, 90, 0)
  
  
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2236, 0, -4469, 90, 0)
  
  spawnMobile("coruscant", "civilian_patrolman", 60, 2236, 0, -4395, 90, 0)
 
  --  Cantina 1 
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000721)
  --
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000714)
  spawnMobile("coruscant", "bartender", 60, 0.3, 0.3, 4.4, 176, 37000316)
 
  
	--  :: Starport District NPCs :: --
	
	
	spawnMobile("coruscant", "stormtrooper", 60, -69.2, 40, 3137, -99, 0)
	spawnMobile("coruscant", "stormtrooper", 60, -70.9, 40, 3146.4, -130, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -167.8, 40, 3130.5, 79, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -114.9, 40, 3216.3, -58, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -123.8, 40, 3216.3, 58, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -29.3, 40.4, 3190, -75, 0)
  
  spawnMobile("coruscant", "cll_8", 60, -210.9, 40, 3166.5, -109, 0)
  
  pNpc = spawnMobile("coruscant", "at_st", 60, -176, 40, 3245, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "commoner", 60, -121, 40, 3259, 22, 0)
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -116, 40, 3231, -148, 0)
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile("coruscant", "commoner", 60, -118.4, 40, 3228.1, 46, 0)
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile("coruscant", "commoner", 60, -129, 40, 3231, 143, 0)
  
  --Imp Bunker
  spawnMobile("coruscant", "fbase_imperial_specialist_noncom", 60, 7.0, -6.7, -8.0, -94, 37000432)
  spawnMobile("coruscant", "fbase_imperial_specialist_noncom", 60, 2.0, -6.7, -8.0, 94, 37000432) 
  spawnMobile("coruscant", "fbase_stormtrooper_medic", 60, 6.9, -13.8, 13.9, 174, 37000435) 
  spawnMobile("coruscant", "fbase_dark_trooper_hard", 60, 15.7, -13.8, -15.0, 0, 37000437)
  
  spawnMobile("coruscant", "stormtrooper", 60, -176.1, 40, 3272.3, 90, 0)
  spawnMobile("coruscant", "stormtrooper", 60, -176.1, 40, 3261.9, 90, 0) 
  
  pNpc = spawnMobile("coruscant", "at_st", 60, -69, 40, 3216, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "imperial_recruiter", 60, -188.7, 40, 3269.4, 90, 0) 
  
  -- :: Monument Square :: --
  spawnMobile("coruscant", "stormtrooper", 60, 1551.5, 40, 775.7, 180, 0) 
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1655.6, 40, 648.8, -90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1541.3, 40, 574.3, 0, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1490, 40, 655, 90, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1484, 40, 753, 151, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  pNpc = spawnMobile("coruscant", "at_st", 60, 1596, 40, 740, -124, 0)
  self:setMoodString(pNpc, "neutral")
  AiAgent(pNpc):setAiTemplate("idlewander")
  
  spawnMobile("coruscant", "stormtrooper", 60, 1660.6, 40, 619.8, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1649.4, 40, 619.8, 0, 0)
  
  spawnMobile("coruscant", "imperial_recruiter", 60, 1653, 40, 606.9, 90, 0) 
  
  spawnMobile("coruscant", "fbase_dark_trooper_hard", 60, 4.4, -6.8, -7.2, 0, 37000254)  
  spawnMobile("coruscant", "fbase_stormtrooper_medic_hard", 60, 6.6, -13.8, 10.5, 0, 37000257)  
  spawnMobile("coruscant", "fbase_imperial_colonel", 60, 13.6, -13.8, 4.9, 64, 37000258)  
  spawnMobile("coruscant", "fbase_imperial_corporal", 60, 17.7, -11.5, -21.3, 168, 37000259)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 718, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 718, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 718, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 720, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 720, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 720, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 722, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 722, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 722, 0, 0)
  
  spawnMobile("coruscant", "stormtrooper", 60, 1525, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1527, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1529, 40, 724, 0, 0) 
  spawnMobile("coruscant", "stormtrooper", 60, 1531, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1533, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1535, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1537, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1539, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1541, 40, 724, 0, 0)
  spawnMobile("coruscant", "stormtrooper", 60, 1543, 40, 724, 0, 0)
  
end
