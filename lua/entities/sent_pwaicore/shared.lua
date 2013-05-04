-- Made with Dr. Matt's Base Core v3
ENT.Base 		= "base_core3"
ENT.PrintName		= "Peace Walker AI Pod Core" -- The name the Core will come up as in the Spawnmenu
ENT.Author			= "Legend" -- Self Explanatory, The author of the addon, AKA Your name.
ENT.Contact			= "ThisIsNotMyEmail@hotmail.co.uk" -- Your contact, Perhaps an email address or a Steam username
ENT.Spawnable		= true -- If true, Anyone can spawn the entity
ENT.AdminSpawnable	= true -- If true, Admins can spawn the entity, Set ENT.Spawnable to false to make the Core Admin only.
ENT.Category		= "Portal 2 Cores"
ENT.Animation		= "sphere_idle_happy" -- Set's the animation of the core, a list can be found here: http://pastebin.com/SAHyMZ3k
ENT.Delay		= 5 -- Delay in seconds between each sound the core makes (excluding 'special' sounds)
ENT.Dir			= "pwai" -- The name of your sub-folder, must be 4 characters.
ENT.MusicCore		= true
/*---------------------------------------------------------
	ENT.Dir: Put your stuff in the following folders:
	
	sound/cores/(ENT.Dir)/
	sound/cores/(ENT.Dir)/special/ -- For use.wav, undo.wav and dmg.wav
	models/cores/(ENT.Dir)/
	materials/models/cores/(ENT.Dir)/
---------------------------------------------------------*/

-- Do not worry about anything below this line unless you're an advanced coder and want to do some special coding work.

if SERVER then AddCSLuaFile() end

function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end
	
	local SpawnPos = tr.HitPos + tr.HitNormal * 16
	
	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	
	return ent
	
end
