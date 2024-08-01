-- Cheat Engine table script for Age of Empires Definitive Edition
-- Version: 101.102.8319.0
-- Author: bbfox

-- Lock resources (skirmish map)
local lockResources = true

-- Resource addresses
local woodAddress = 0x12345678
local foodAddress = 0x23456789
local goldAddress = 0x34567890
local stoneAddress = 0x45678901

-- Freeze population (make sure you have at least 1 of space like 10/11)
local freezePopulation = true

-- Free building and research
local freeBuilding = true
local freeResearch = true

-- Function to lock resources
local function lockResources()
    if lockResources then
        -- Lock wood
        writeFloat(woodAddress, 10000)
        -- Lock food
        writeFloat(foodAddress, 10000)
        -- Lock gold
        writeFloat(goldAddress, 10000)
        -- Lock stone
        writeFloat(stoneAddress, 10000)
    end
end

-- Function to freeze population
local function freezePopulation()
    if freezePopulation then
        -- Freeze population
        writeFloat(0x12345678, 10)
    end
end

-- Function to enable free building and research
local function enableFreeBuildingAndResearch()
    if freeBuilding and freeResearch then
        -- Enable free building
        writeFloat(0x23456789, 1)
        -- Enable free research
        writeFloat(0x34567890, 1)
    end
end

-- Main loop
while true do
    lockResources()
    freezePopulation()
    enableFreeBuildingAndResearch()
    sleep(100)
end