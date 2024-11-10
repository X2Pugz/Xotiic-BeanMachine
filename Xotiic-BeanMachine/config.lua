Config = {}
Config.InventorySystem = 'ox' -- Supports 'qb' & 'ox'

Config.Jobname = 'beanmachine'


Config.BeanMachineDeliveryPed = {
    {
      BeanMachineDeliveryPedModel = 'a_m_y_business_03',
      BeanMachineDeliveryPedLocation = vector3(135.88, -1049.77, 28.15),
      BeanMachineDeliveryRenderDistance = 5,
    }
  }

  Config.DeliveryLocations = {
    ['deliveryroute'] = {
      [1] = {
        name = "1",
        coords = vector4(-952.48, -1077.58, 2.67, 34.72),
      },
      [2] = {
        name = "2",
        coords = vector4(-1043.36, -1580.35, 5.03, 34.72),
      },
      [3] = {
        name = "3",
        coords = vector4(-1447.65, -537.27, 34.74, 36.38),
      },
      [4] = {
        name = "4",
        coords = vector4(-706.09, -1036.47, 16.41, 36.38),
      },
      [5] = {
        name = "5",
        coords = vector4(-702.82, -1023.36, 16.42, 298.18),
      },
    }
  }
  
  Config.MinFoodDrink = 2 
  Config.MaxFoodDrink = 5
  
  Config.MinPay = 500 
  Config.MaxPay = 1500
  
  Config.PayWorker = true
  Config.PlayerPercent = 30 



  Config.BeanMachineGaragePed = {
    {
      BeanMachinePedModel = 'ig_lestercrest',
      BeanMachinePedLocation = vector3(128.75, -1055.25, 28.19),
      BeanMachineGarageRenderDistance = 15,
    }
  }
  

  Config.BikeSpawn = vector4(135.71, -1061.62, 29.19, 187.36)
  Config.BikeVehicle = 'zombieb'
  
  Config.CarSpawn = vector4(129.3, -1062.75, 29.19, 181.97)
  Config.CarVehicle = 'italirsx'