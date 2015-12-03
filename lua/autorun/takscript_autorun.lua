if SERVER then
	AddCSLuaFile()
	include("main/sv_takscript.lua")
    util.AddNetworkString("OpenMenu")

    // Server function
    //On player death, it will send a message to ply (the player who died) to do client-side stuff
    local function playerdeath(victim, weapon, killer)
        net.Start("OpenMenu")
        net.Send(victim)
    end
    hook.Add("PlayerDeath", "Playerdeathmenu", playerdeath)
else
	include("main/cl_takscript.lua")
end