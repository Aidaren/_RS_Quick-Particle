--[[
Made By Aidaren / 究极挨打人

Version - 0.2.2

Contact Me:
WeChat: AidarenADR
Discord: Aidaren#5009
--]]

--<服务>--
local Services = require(script.Require.Services)

--<模块>--
local Modules = require(script.Require.Modules)

--<事件>--
local QuickParticle = {}

function QuickParticle.CreateWeld(Part0 , Part1 , WeldName , C0)
	
	local Parameter = {Part0 , Part1 , WeldName , C0}
	Modules.Weld.CreateWeld(Parameter)
	
end

function QuickParticle.BreakWeld(WeldParent , WeldName , DestoryDelay)
	
	local Parameter = {WeldParent , WeldName, DestoryDelay}
	Modules.Weld.BreakWeld(Parameter)
	
end

function QuickParticle.EmitAll(Parent , EmitDelay)
	
	local Parameter = {Parent , EmitDelay}
	Modules.Operate.EmitAll(Parameter)
	
end

function QuickParticle.EnableAll(Parent , EnableDelay)

	local Parameter = {Parent , EnableDelay}
	Modules.Operate.EnableAll(Parameter)

end

function QuickParticle.DisableAll(Parent , DisableDelay)

	local Parameter = {Parent , DisableDelay}
	Modules.Operate.DisableAll(Parameter)

end

function QuickParticle.GetGroundPosition(Part , IgnoreList)
	
	local Parameter = {Part , IgnoreList}
	local Position = Modules.GroundPosition(Parameter)
	
	return Position
	
end

function QuickParticle.LoopSpriteSheet(ParticlePreset , SpriteSheet , Parent , EmitCount , FrameTime , DestoryDelay)
	
	local Parameter = {ParticlePreset , SpriteSheet , Parent , EmitCount , FrameTime , DestoryDelay}
	Modules.SpriteSheet(Parameter)
	
end

function QuickParticle.AddVelocity(Parent , Strength , DestoryDelay)
	
	local Parameter = {Parent , Strength , DestoryDelay}
	Modules.Velocity(Parameter)
	
end

return QuickParticle
