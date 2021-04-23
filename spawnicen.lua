local function MakeLic(ply)
	local turd = ents.Create("ent_license") -- название энтити лицензии
	turd:SetPos(ply:GetPos() + Vector(0,0,32))
	turd:Spawn()
	timer.Simple(30, function() if turd:IsValid() then turd:Remove() end end)
end


local function DoLic(ply)
if (ply:Team() == TEAM_MAYOR ) then
	if !ply:Alive() then
			DarkRP.notify( ply, NOTIFY_ERROR, 5, "Вы мертвы, как бы да" )
		return "" 
	end
	ply.NextPoo = CurTime() + 10
	MakeLic(ply)
	return ""
else
	DarkRP.notify( ply, 6, 6, "Вы не Мэр")
end
end
concommand.Add("spawnlice", DoLic)

