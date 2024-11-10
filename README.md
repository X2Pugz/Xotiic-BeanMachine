# Xotiic-BeanMachine
Fivem QBCore Job Script For Gabz BeanMachine Map Using ox_inventory and qb-inventory

- Features Of The Script
- allows players to craft food and drink to then sell to players in the server
- fully setup stashes and counters for both ox inventory and qb-inventory
- fully setup garage system for players with the bean machine job
- targets for clock in clothing and boss menu all in the same location
- food delivery system that allows players to deliver food to locations listed in the config.lua

## Video Previews
- https://www.youtube.com/watch?v=gXjr3Veg4_E&t=55s

## Dependencies
- ox_lib https://github.com/overextended/ox_lib
- qb-inventory or ox_inventory

# How to install

- Drag and drop folder into ur resources folder
- add this to ur server.cfg
```
ensure Xotiic-BeanMachine
```
### Item installation

- add these to ur ox_inventory/data/items.lua if using ox inventory
```lua
-- Xoticc-BeanMachine
["bchocolatemuffin"] = {
		label = "Chocolate Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "Chocolate Muffin",
		client = {
			image = "bchocolatemuffin.png",
		}
	},

	["blemonslush"] = {
		label = "Lemon Slush",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cup Fill With Lemon Slush",
		client = {
			image = "blemonslush.png",
		}
	},

	["bberrymuffin"] = {
		label = "Berry Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "Berry Muffin",
		client = {
			image = "bberrymuffin.png",
		}
	},

	["bstrawberryvanillaoatlatte"] = {
		label = "Strawberry Vanilla Oat Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Strawberry Vanilla Oat Latte",
		client = {
			image = "bstrawberryvanillaoatlatte.png",
		}
	},

	["bstrawberrycreamfrappuccino"] = {
		label = "Strawberry Cream Frappuccino",
		weight = 1000,
		stack = true,
		close = true,
		description = "Strawberry Cream Frappuccino",
		client = {
			image = "bstrawberrycreamfrappuccino.png",
		}
	},

    ["bpepper"] = {
		label = "DR.Pepper",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cup Fill With DR.Pepper",
		client = {
			image = "bpepper.png",
		}
	},

	["bespresso"] = {
		label = "Espresso",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso",
		client = {
			image = "bespresso.png",
		}
	},

	["bdonut"] = {
		label = "Donut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Tasty Donut",
		client = {
			image = "bdonut.png",
		}
	},

	["bmuffin"] = {
		label = "Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "Muffin",
		client = {
			image = "bmuffin.png",
		}
	},

    ["borangeslush"] = {
		label = "Orange Slush",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cup Fill With Orange Slush",
		client = {
			image = "borangeslush.png",
		}
	},

    ["borange"] = {
		label = "Orange",
		weight = 1000,
		stack = true,
		close = true,
		description = "Orange",
		client = {
			image = "borange.png",
		}
	},

	["bcocacola"] = {
		label = "CocaCola",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cup Fill With Cocacola",
		client = {
			image = "bcocacola.png",
		}
	},

	["bbanana"] = {
		label = "Banana",
		weight = 1000,
		stack = true,
		close = true,
		description = "Banana",
		client = {
			image = "bbanana.png",
		}
	},

    ["bcloudcafe"] = {
		label = "Cloud Cafe",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cloud Cafe",
		client = {
			image = "bcloudcafe.png",
		}
	},

	["bhoneyhazelnutoatlatte"] = {
		label = "Honey Hazelnut Oat Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Honey Hazelnut Oat Latte",
		client = {
			image = "bhoneyhazelnutoatlatte.png",
		}
	},

    ["bcaramelfrappucino"] = {
		label = "Caramel Frappucino",
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Frappucino",
		client = {
			image = "bcaramelfrappucino.png",
		}
	},

	["bapple"] = {
		label = "Apple",
		weight = 1000,
		stack = true,
		close = true,
		description = "Red Apple",
		client = {
			image = "bapple.png",
		}
	},

    ["bespressomacchiato"] = {
		label = "Espresso Macchiato",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Macchiato",
		client = {
			image = "bespressomacchiato.png",
		}
	},

    	["bsprite"] = {
		label = "Sprite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cup Fill With Sprite",
		client = {
			image = "bsprite.png",
		}
	},

	["bicedcaffelatte"] = {
		label = "Iced Caffe Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Iced Caffe Latte",
		client = {
			image = "bicedcaffelatte.png",
		}
	},

	["bjavachipfrappuccino"] = {
		label = "Java Chip Frappuccino",
		weight = 1000,
		stack = true,
		close = true,
		description = "Java Chip Frappuccino",
		client = {
			image = "bjavachipfrappuccino.png",
		}
	},
	```
- done









### Item installation Qb
- add these to ur qb-core/shared/items.lua if using qb-inventory
```lua
-- Xoticc-BeanMachine
['bdonut'] 	         			 = {['name'] = 'bdonut', 						['label'] = 'Donut', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bdonut.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Tasty Donut'},
['bbanana'] 	         		 = {['name'] = 'bbanana', 						['label'] = 'Banana', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bbanana.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Banana'},
['borange'] 	         		 = {['name'] = 'borange', 						['label'] = 'Orange', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'borange.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Orange'},
['bapple'] 	         			 = {['name'] = 'bapple', 						['label'] = 'Apple', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bapple.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Red Apple'},
['bmuffin'] 	         		 = {['name'] = 'bmuffin', 						['label'] = 'Muffin', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bmuffin.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Muffin'},
['bchocolatemuffin'] 	         = {['name'] = 'bchocolatemuffin', 				['label'] = 'Chocolate Muffin', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bchocolatemuffin.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Chocolate Muffin'},
['bberrymuffin'] 	         	 = {['name'] = 'bberrymuffin', 					['label'] = 'Berry Muffin', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bberrymuffin.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Berry Muffin'},
['bsprite'] 	         	 	 = {['name'] = 'bsprite', 						['label'] = 'Sprite', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bsprite.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cup Fill With Sprite'},
['bcocacola'] 	         	 	 = {['name'] = 'bcocacola', 					['label'] = 'CocaCola', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bcocacola.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cup Fill With Cocacola'},
['bpepper'] 	         	 	 = {['name'] = 'bpepper', 						['label'] = 'DR.Pepper', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bpepper.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cup Fill With DR.Pepper'},
['blemonslush'] 	         	 = {['name'] = 'blemonslush', 					['label'] = 'Lemon Slush', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'blemonslush.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cup Fill With Lemon Slush'},
['borangeslush'] 	         	 = {['name'] = 'borangeslush', 					['label'] = 'Orange Slush', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'borangeslush.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cup Fill With Orange Slush'},
['bcloudcafe'] 	     		 	 = {['name'] = 'bcloudcafe', 					['label'] = 'Cloud Cafe', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bcloudcafe.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cloud Cafe'},
['bjavachipfrappuccino'] 	     = {['name'] = 'bjavachipfrappuccino', 			['label'] = 'Java Chip Frappuccino', 	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bjavachipfrappuccino.png', ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Java Chip Frappuccino'},
['bhoneyhazelnutoatlatte'] 	     = {['name'] = 'bhoneyhazelnutoatlatte', 		['label'] = 'Honey Hazelnut Oat Latte', ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bhoneyhazelnutoatlatte.png',['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Honey Hazelnut Oat Latte'},
['bstrawberrycreamfrappuccino']  = {['name'] = 'bstrawberrycreamfrappuccino', 	['label'] = 'Strawberry Cream Frappuccino', ['weight'] = 1000, 	['type'] = 'item', 		['image'] = 'bstrawberrycreamfrappuccino.png',['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Strawberry Cream Frappuccino'},
['bicedcaffelatte'] 	         = {['name'] = 'bicedcaffelatte', 				['label'] = 'Iced Caffe Latte', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bicedcaffelatte.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Iced Caffe Latte'},
['bespresso'] 	     		 	 = {['name'] = 'bespresso', 					['label'] = 'Espresso', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bespresso.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Espresso'},
['bespressomacchiato'] 	     	 = {['name'] = 'bespressomacchiato', 			['label'] = 'Espresso Macchiato', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bespressomacchiato.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Espresso Macchiato'},
['bcaramelfrappucino'] 	     	 = {['name'] = 'bcaramelfrappucino', 			['label'] = 'Caramel Frappucino', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bcaramelfrappucino.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Caramel Frappucino'},
['bstrawberryvanillaoatlatte'] 	 = {['name'] = 'bstrawberryvanillaoatlatte',	['label'] = 'Strawberry Vanilla Oat Latte',['weight'] = 1000, 	['type'] = 'item', 		['image'] = 'bstrawberryvanillaoatlatte.png',['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Strawberry Vanilla Oat Latte'},
```

- add this to ur qb-core/shared/jobs.lua
```lua
["beanmachine"] = {
		label = "Bean Machine",
		offDutyPay = false,
		defaultDuty = false,
		grades = {
			['0'] = {
				name = 'Worker',
				payment = 30,
			},
			['1'] = {
				name = 'Vice Boss',
				payment = 70,
			},
			['2'] = {
				name = 'Boss',
				isboss = true,
				payment = 130,
			},
		}
	},
	```
