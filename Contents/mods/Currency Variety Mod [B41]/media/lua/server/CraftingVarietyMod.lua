function GemCrafting_OnCreate(items, result, player)
    player:getInventory():AddItem("GemScrap")
end

function PearlCrafting_OnCreate(items, result, player)
    player:getInventory():AddItems("Pearls", ZombRandBetween(2, 6))
end

function GoldCrafting_OnCreate(items, result, player)
    player:getInventory():AddItems("GoldScraps", ZombRandBetween(1, 3))
end

function GoldGemCrafting_OnCreate(items, result, player)
    player:getInventory():AddItems("GoldScraps", ZombRandBetween(1, 3))
    player:getInventory():AddItem("GemScrap")
end

function SilverCrafting_OnCreate(items, result, player)
    player:getInventory():AddItems("SilverScraps", ZombRandBetween(1, 3))
end

function SilverGemCrafting_OnCreate(items, result, player)
    player:getInventory():AddItems("SilverScraps", ZombRandBetween(1, 3))
    player:getInventory():AddItem("GemScrap")
end

function m16Purchase_OnCreate(items, result, player)
    player:getInventory():AddItem("556Box")
    player:getInventory():AddItem("556Clip")
end

function m14Purchase_OnCreate(items, result, player)
    player:getInventory():AddItem("308Box")
    player:getInventory():AddItem("308Clip")
end

function CarCraftingMH_OnCreate(items, result, player)
    if isClient() then
	     player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 25)
    else
       addVehicle("SmallCar02")
       local vehicle = player:getVehicle()
       if not vehicle then
          vehicle = player:getUseableVehicle()
       end
       if not vehicle then
          vehicle = player:getNearVehicle()
       end
       sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end

end

function CarCraftingCD_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 25)
    else
      addVehicle("SmallCar")
      local vehicle = player:getVehicle()
      if not vehicle then
        vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCCWN_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 40)
    else
      addVehicle("CarStationWagon")
      local vehicle = player:getVehicle()
      if not vehicle then
        vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCCWWS_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 40)
    else
      addVehicle("CarStationWagon2")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCDN_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("PickUpTruck")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCDFD_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("PickUpTruckLightsFire")

      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCDMCL_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("PickUpTruckMccoy")
      local vehicle = player:getVehicle()
     if not vehicle then
        vehicle = player:getUseableVehicle()
     end
     if not vehicle then
        vehicle = player:getNearVehicle()
     end
     sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCDPR_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("PickUpTruckLights")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
 end

function CarCraftingCNN_OnCreate(items, result, player)
   if isClient() then
      player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 45)
   else
      addVehicle("CarNormal")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
   end
end

function CarCraftingCNR_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 45)
    else
      addVehicle("CarLights")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCNP_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 45)
    else
      addVehicle("CarLightsPolice")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCNTY_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 45)
    else
      addVehicle("CarTaxi")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCNTG_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 45)
    else
      addVehicle("CarTaxi2")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCP_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 65)
    else
      addVehicle("ModernCar02")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDBN_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("PickUpVan")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDBFR_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 65)
    else
      addVehicle("PickUpVanLights")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDBFD_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 65)
    else
      addVehicle("PickUpVanLightsFire")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDBP_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 65)
    else
      addVehicle("PickUpVanLightsPolice")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDBMCLC_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("PickUpVanMccoy")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingML_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("CarLuxury")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFAT_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 75)
    else
      addVehicle("SUV")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFV_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("Van")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVSS_OnCreate(items, result, player)
    if isClient() then
      player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanSeats")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVA_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanAmbulance")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVRV_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanRadio")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVNRV_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanRadio_3N")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVS_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanSpiffo")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVT_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("Van_Transit")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVMGF_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("Van_MassGenFac")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVKD_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("Van_KnoxDisti")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVLM_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("Van_LectroMax")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingFVF_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 60)
    else
      addVehicle("VanSpecial")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDE_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 65)
    else
      addVehicle("ModernCar")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingDR_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 50)
    else
      addVehicle("OffRoad")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCC_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 75)
    else
      addVehicle("SportsCar")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCSVN_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 100)
    else
      addVehicle("StepVan")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCSVM_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 100)
    else
      addVehicle("StepVanMail")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCSVKH_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 100)
    else
      addVehicle("StepVan_Heralds")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end

function CarCraftingCSVSOD_OnCreate(items, result, player)
    if isClient() then
       player:Say("Not Available in Multiplayer")
       player:getInventory():AddItems("Pearls", 100)
    else
      addVehicle("StepVan_Scarlet")
      local vehicle = player:getVehicle()
      if not vehicle then
         vehicle = player:getUseableVehicle()
      end
      if not vehicle then
        vehicle = player:getNearVehicle()
      end
      sendClientCommand(player, "vehicle", "getKey", { vehicle = vehicle:getId() })
    end
end
