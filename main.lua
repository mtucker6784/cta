-- CTA Addon
-- mtucker6784@gmail.com
-- Uh, so. This isn't very pretty. LUA isn't my strong language.
-- Raids are sorted in this addon by their respective Blizzard ID.
-- Tank queues ... "_,h" == Tank role
-- Healer queues ... "_,_,h"
-- To be fair, giving credit where it's due: most of the 'logic' I used is ripped off from "Nullberri" @ https://us.battle.net/forums/en/wow/topic/3967949299

function tank()
u="OnUpdate";
m=UIParent;
x=function(y) y:SetScript(u,function(f,e)f.t=f.t+e;
	if f.t>2 -- Time to query LFR CTA, scan every 2 seconds. Static number (for now.)
		then f.t = 0;
			RequestLFDPlayerLockInfo();		
			
			_,h =GetLFGRoleShortageRewards(1287, 1); -- Darkbough
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(u,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Tank Found for Darkbough!");
			end 

			_,h =GetLFGRoleShortageRewards(1288, 1); -- Tormented Guardians
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(u,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Tank Found for Tormented Guardians!");
			end 
						
			_,h =GetLFGRoleShortageRewards(1289, 1); -- Rift of Aln
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(u,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Tank Found for Rift of Aln!");
			end 			
									
			_,h =GetLFGRoleShortageRewards(1290, 1); -- Arcing Aqueducts
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(u,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Tank Found for Arcing Aqueducts!");
			end 
						
			_,h =GetLFGRoleShortageRewards(1291, 1); -- Royal Athenaeum
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(u,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Tank Found for Royal Athenaeum!");
			end 
						
			_,h =GetLFGRoleShortageRewards(1292, 1); -- Nightspire
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(u,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Tank Found for Nightspire!");
			end 

			_,h =GetLFGRoleShortageRewards(1293, 1); -- Betrayer's Rise.
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(u,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Tank Found for Betrayer's Rise!");
			end 

			_,h =GetLFGRoleShortageRewards(1411, 1); -- Trial of Valor
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(u,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Tank Found for Trial of Valor!");
			end 

		end 
	end);
end;

if n==nil then n=CreateFrame("Button","a",m,"UIPanelButtonTemplate");
	n:SetMovable(true);
	n:EnableMouse(true)
	n:RegisterForDrag("LeftButton")
	n:SetScript("OnDragStart", n.StartMoving)
	n:SetScript("OnDragStop", n.StopMovingOrSizing)
	x(n);
	n.t=0;
	n:SetPoint("CENTER",0,0);
	n:SetWidth(110);
	n:SetHeight(62);
	n:SetText("Quit Tank CTA");
	n:SetScript("OnClick",function(f) f:SetScript(u,nil);
	f:Hide();
	end);
else n:Show();
	x(n);
	end
end

-- Healer queues

function healer()
a="OnUpdate";
b=UIParent;
dd=function(y) y:SetScript(a,function(f,e)f.t=f.t+e;
	if f.t>2 -- Time to query LFR CTA, scan every 2 seconds. Static number (for now.)
		then f.t = 0;
			RequestLFDPlayerLockInfo();		
			
			_,_,h =GetLFGRoleShortageRewards(1287, 1); -- Darkbough
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(a,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Healer Found for Darkbough!");
			end 

			_,_,h =GetLFGRoleShortageRewards(1288, 1); -- Tormented Guardians
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(a,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Healer Found for Tormented Guardians!");
			end 
						
			_,_,h =GetLFGRoleShortageRewards(1289, 1); -- Rift of Aln
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(a,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Healer Found for Rift of Aln!");
			end 			
									
			_,_,h =GetLFGRoleShortageRewards(1290, 1); -- Arcing Aqueducts
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(a,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Healer Found for Arcing Aqueducts!");
			end 
						
			_,_,h =GetLFGRoleShortageRewards(1291, 1); -- Royal Athenaeum
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(a,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Healer Found for Royal Athenaeum!");
			end 
						
			_,_,h =GetLFGRoleShortageRewards(1292, 1); -- Nightspire
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(a,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Healer Found for Nightspire!");
			end 

			_,_,h =GetLFGRoleShortageRewards(1293, 1); -- Betrayer's Rise.
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(a,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA Healer Found for Betrayer's Rise!");
			end 

			_,_,h =GetLFGRoleShortageRewards(1411, 1); -- Trial of Valor
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(a,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA Healer Found for Trial of Valor!");
			end 
		end 
	end);
end;

if hh==nil then hh=CreateFrame("Button","a",b,"UIPanelButtonTemplate");
	hh:SetMovable(true);
	hh:EnableMouse(true)
	hh:RegisterForDrag("LeftButton")
	hh:SetScript("OnDragStart", hh.StartMoving)
	hh:SetScript("OnDragStop", hh.StopMovingOrSizing)
	dd(hh);
	hh.t=0;
	hh:SetPoint("CENTER",0,0);
	hh:SetWidth(120);
	hh:SetHeight(62);
	hh:SetText("Quit Healer CTA");
	hh:SetScript("OnClick",function(f) f:SetScript(a,nil);
	f:Hide();
	end);
else hh:Show();
	dd(hh);
	end
end

-- DPS queues

function dps()
du="OnUpdate";
dm=UIParent;
dx=function(y) y:SetScript(du,function(f,e)f.t=f.t+e;
	if f.t>2 -- Time to query LFR CTA, scan every 2 seconds. Static number (for now.)
		then f.t = 0;
			RequestLFDPlayerLockInfo();		
			
			_,_,_,h =GetLFGRoleShortageRewards(1287, 1); -- Darkbough
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(du,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA DPS Found for Darkbough!");
			end 

			_,_,_,h =GetLFGRoleShortageRewards(1288, 1); -- Tormented Guardians
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(du,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA DPS Found for Tormented Guardians!");
			end 
						
			_,_,_,h =GetLFGRoleShortageRewards(1289, 1); -- Rift of Aln
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(du,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA DPS Found for Rift of Aln!");
			end 			
									
			_,_,_,h =GetLFGRoleShortageRewards(1290, 1); -- Arcing Aqueducts
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(du,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA DPS Found for Arcing Aqueducts!");
			end 
						
			_,_,_,h =GetLFGRoleShortageRewards(1291, 1); -- Royal Athenaeum
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(du,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA DPS Found for Royal Athenaeum!");
			end 
						
			_,_,_,h =GetLFGRoleShortageRewards(1292, 1); -- Nightspire
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(du,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA DPS Found for Nightspire!");
			end 

			_,_,_,h =GetLFGRoleShortageRewards(1293, 1); -- Betrayer's Rise.
			if h == true then 
				PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
				f:SetScript(du,nil);
				f:Hide();
				print("|cFF00FF00***CTA*** |rCTA DPS Found for Betrayer's Rise!");
			end 

			_,_,_,h =GetLFGRoleShortageRewards(1411, 1); -- Trial of Valor
			if h == true then PlaySoundFile([[Sound\Creature\BabyMurloc\BabyMurlocA.ogg]],"Master");
			f:SetScript(du,nil);
			f:Hide();
			print("|cFF00FF00***CTA*** |rCTA DPS Found for Trial of Valor!");
			end 

		end 
	end);
end;

if dn==nil then dn=CreateFrame("Button","a",dm,"UIPanelButtonTemplate");
	dn:SetMovable(true);
	dn:EnableMouse(true)
	dn:RegisterForDrag("LeftButton")
	dn:SetScript("OnDragStart", dn.StartMoving)
	dn:SetScript("OnDragStop", dn.StopMovingOrSizing)
	dx(dn);
	dn.t=0;
	dn:SetPoint("CENTER",0,0);
	dn:SetWidth(110);
	dn:SetHeight(62);
	dn:SetText("Quit DPS CTA");
	dn:SetScript("OnClick",function(f) f:SetScript(u,nil);
	f:Hide();
	end);
else dn:Show();
	dx(dn);
	end
end

-- Slash command
SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/cta';
local function handler(msg, editbox)
 if msg == 'nums' then
 for i = 1, GetNumRFDungeons() do
  local id, name = GetRFDungeonInfo(i)
  print(id .. ": " .. name)
  end
 elseif msg == 't' then
	print("|cFF00FF00CTA: -- Now looking for all LFR CTA as TANK")
	tank()
 elseif msg == 'h' then
	print("|cFF00FF00CTA: -- Now looking for all LFR CTA as HEALER")
	healer();
 elseif msg == 'd' then
	print("|cFF00FF00CTA: -- Now looking for all LFR CTA as DPS (good luck...)")
	dps();
 else
 print("|cFF00FF00***CTA***:\n/cta t for tank queue\n/cta h for healer queue\n/cta d for DPS queue\n/cta nums  to find all raids by their numbers")

 end
end
SlashCmdList["HELLOWORLD"] = handler; -- Also a valid assignment strategy