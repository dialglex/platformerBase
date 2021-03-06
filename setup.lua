function drawLoadingScreen()
	loadingImage = love.graphics.newImage("images/ui/loading.png")
	loadingCanvas = love.graphics.newCanvas(xWindowSize, yWindowSize)
	love.graphics.setCanvas(loadingCanvas)
	love.graphics.draw(loadingImage)
	love.graphics.setCanvas()
	love.graphics.draw(loadingCanvas, (xWindowSize - (480 * scale)) / 2, (yWindowSize - (270 * scale)) / 2, 0, scale, scale)
	love.graphics.present()
end

function setupCanvases(drawActors)
	local backgroundCanvas = love.graphics.newCanvas(xWindowSize, yWindowSize)
	local foregroundCanvas = love.graphics.newCanvas(xWindowSize, yWindowSize)

	if drawActors ~= nil then
		for _, actor in ipairs(drawActors) do
			if actor.actor == "tile" and actor.name ~= "corruption" and actor.name ~= "teleporter" and actor.name ~= "chest" then
				if actor.background ~= nil then
					if actor.background then
						love.graphics.setCanvas(backgroundCanvas)
					else
						love.graphics.setCanvas(foregroundCanvas)
					end
					love.graphics.draw(actor.spritesheet, actor.quad, actor.x, actor.y)
					love.graphics.setCanvas()
				end
			end
		end
	end
	love.graphics.setColor(1, 1, 1, 1)

	return {backgroundCanvas, foregroundCanvas}
end

function loadMap(newMap, oldPlayer, file)
	local shopItemNumber = 0
	local alternateShopItem = false
	local actors = {}
	local npcSpawns = {}

	local chosenMap = newMap
	for _, layer in ipairs(chosenMap.layers) do
		for _, tilesetData in ipairs(chosenMap.tilesets) do
			if layer.name == tilesetData.name then
				local tileset = love.graphics.newImage(string.sub(tilesetData.image, 10))
				for mapX = 0, layer.width - 1 do
					for mapY = 0, layer.height - 1 do
						local blockID = layer.data[1 + mapX + mapY * layer.width]
						if blockID ~= 0 then
							local tileID = blockID - tilesetData.firstgid

							local tileX = tileID % (tilesetData.imagewidth / tilesetData.tilewidth)
							local tileY = math.floor(tileID / (tilesetData.imageheight / tilesetData.tileheight))

							local blockQuad = love.graphics.newQuad(tileX * tilesetData.tilewidth, tileY * tilesetData.tileheight, tilesetData.tilewidth,
								tilesetData.tileheight, tilesetData.imagewidth, tilesetData.imageheight)

							if oldPlayer == nil then
								if layer.name == "player" then
									table.insert(actors, newPlayer(mapX*16, (mapY*16) - 8))
								end
							end

							local tile = tilesetData.tiles[tileID+1]
							if layer.name ~= "player" and layer.name ~= "objects" then
								if tile.properties["active"] == nil or tile.properties["active"] then
									active = true
								else
									active = false
								end

								if tile.properties["item"] then
									local shopItem = ""
									local randomNumber = math.random(2) -- 1 or 2
									if randomNumber <= shopItemNumber and alternateShopItem == false then -- 0% 1st time, 50% second time, 100% third time
										if shopItemType == "weapon" then
											shopItem = "accessory"
										else
											shopItem = "weapon"
										end
										alternateShopItem = true
									else
										if shopItemType == "weapon" then
											shopItem = "weapon"
										else
											shopItem = "accessory"
										end
									end

									if shopItem == "weapon" then
										local stats = getItemStats("weaponShopItem")
										table.insert(actors, newItem("weaponShopItem", mapX*16, mapY*16, stats))
									else
										local stats = getItemStats("accessoryShopItem")
										table.insert(actors, newItem("accessoryShopItem", mapX*16, mapY*16, stats))
									end
									shopItemNumber = shopItemNumber + 1
								elseif tile.properties["npc"] then
									local stats = getNpcStats(tilesetData.name)
									if tile.properties["xOffset"] == nil or tile.properties["yOffset"] == nil then
										table.insert(npcSpawns, newNpc(mapX*16, mapY*16, 0, 0, stats))
									else
										table.insert(npcSpawns, newNpc(mapX*16 + tile.properties["xOffset"], mapY*16 + tile.properties["yOffset"], 0, 0, stats))
									end
								else
									if tile.properties["collidable"] then
										local tileHitbox = tile.objectGroup.objects[1]
										table.insert(actors, newTile(tilesetData.name, tilesetData.tilewidth, tilesetData.tileheight, mapX*16, mapY*16,
											blockQuad, tileset, tile.properties["collidable"], tile.properties["background"], tile.properties["platform"],
											active, tileHitbox.x, tileHitbox.y, tileHitbox.width, tileHitbox.height))
									else
										table.insert(actors, newTile(tilesetData.name, tilesetData.tilewidth, tilesetData.tileheight, mapX*16, mapY*16,
											blockQuad, tileset, tile.properties["collidable"], tile.properties["background"], tile.properties["platform"],
											active))
									end
								end
							end
						end
					end
				end
			end
		end
		if layer.name == "objects" then
			for _, object in ipairs(layer.objects) do
				if object.properties["active"] == nil or object.properties["active"] then
					active = true
				else
					active = false
				end
				table.insert(actors, newObject(object.x, object.y, object.width, object.height, object.properties["type"], object.properties["data"], active))
			end
		end
	end

	if oldPlayer ~= nil then
		table.insert(actors, oldPlayer)
	end

	local map = {}
	map.actors = actors
	map.npcSpawns = npcSpawns
	
	map.backgroundImage = love.graphics.newImage(string.sub(chosenMap.properties["background"], 10))
	map.explored = false

	map.topLeft = chosenMap.properties["topLeft"]
	map.topMiddle = chosenMap.properties["topMiddle"]
	map.topRight = chosenMap.properties["topRight"]

	map.bottomLeft = chosenMap.properties["bottomLeft"]
	map.bottomMiddle = chosenMap.properties["bottomMiddle"]
	map.bottomRight = chosenMap.properties["bottomRight"]

	map.leftTop = chosenMap.properties["leftTop"]
	map.leftMiddle = chosenMap.properties["leftMiddle"]
	map.leftBottom = chosenMap.properties["leftBottom"]

	map.rightTop = chosenMap.properties["rightTop"]
	map.rightMiddle = chosenMap.properties["rightMiddle"]
	map.rightBottom = chosenMap.properties["rightBottom"]

	canvasLayers = setupCanvases(map.actors)
	map.backgroundCanvas = canvasLayers[1]
	map.foregroundCanvas = canvasLayers[2]
	map.currentMapDirectory = file

	return map
end

