DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

PLAYER.DisplayName = "Baddie"

PLAYER.WalkSpeed 			= 250;
PLAYER.RunSpeed				= 550;
PLAYER.CrouchedWalkSpeed 	= (85/250)
PLAYER.JumpPower 			= 280
PLAYER.CanUseFlashlight 	= true;
PLAYER.TeammateNoCollide	= false;		-- Do we collide with teammates or run straight through them
PLAYER.AvoidPlayers			= false;

function PLAYER:SelectModel()
	self.Player:ESSetModelToActive()
	self.Player:SetPlayerColor(Vector(1,0,0));
end
function PLAYER:Loadout()
	self.Player:RemoveAllAmmo();
	self.Player:Give( "excl_crowbar" );
	self.Player:Give( "weapon_nothing" );
	self.Player:SelectWeapon("weapon_nothing");

	self.Player:SetupHull()
end

player_manager.RegisterClass( "player_baddie", PLAYER, "player_default" )
