
	local retval Joueurs = NetworkClanGetLocalMembershipsCount()

	--[[ ====  Système de Paliers ==== --]]

	if Joueurs <= 15 then
		--[[ PREMIER PALIER --]]
		DensityMultiplier = 0.45
	elseif Joueurs >= 15 and Joueurs <= 25 then
		--[[ DEUXIEME PALIER --]]
		DensityMultiplier = 0.35
	elseif Joueurs >= 25 and Joueurs <= 35 then
		--[[ TROISIEME PALIER --]]
		DensityMultiplier = 0.25
	elseif Joueurs >= 35 and Joueurs <= 45 then
		--[[ QUATRIEME PALIER --]]
		DensityMultiplier = 0.15
	elseif Joueurs >= 45 then
		--[[ CINQUIEME PALIER --]]
		DensityMultiplier = 0.00
	else 
		DensityMultiplier = 0.00
	end

	--[[ ====  Creations des PNJ ==== --]]

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
			SetPedDensityMultiplierThisFrame(DensityMultiplier)
			SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
			SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
			SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
		end
	end)