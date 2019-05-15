do return end

local old = Tunnel.GetLivingTunnelCount
if not old then return end

function Tunnel.GetLivingTunnelCount(teamNumber)
	return math.floor(old(teamNumber) / 2) -- Double the number of tunnels
end
