# wasabi_fishing

This resource was forked from wasabi_fishing as a free interactive fishing script for ESX servers.
ESX fishing script with reward shark and sell it to black money

## Features
- Optimized 0.00ms usage on idle
- Skill-check based success
- Full animations and props
- Chance of fishing rod breaking upon failing skill-check(Can be changed in config)
- Configurable random wait time for getting bite on line
- Configurable fishing rewards(4 by default included)
- Configurable prices to sell fishing rewards
- Configurable skill-check difficulty per fishing reward
- Ability to fish from boat, pier, or anywhere with a body of water
- No job requirement
- Fully configurable fish buyer to sell fish

## Dependencies
- es_extended -esx-lgacy - https://github.com/esx-framework/esx-legacy
- ox_lib - https://github.com/overextended/ox_lib/releases
- danny3_outlawalert


## Installation

- Make sure you have dependencies

- Insert proper item sql or ensure items are present that you will be using in the configuration

- Put script in your `resources` directory

- Add `ensure nB_fishing` in your `server.cfg` (*After* dependencies)

### Extra Information
- Make sure `ox_lib` starts before `nB_fishing`
- Inventory images included in the `InventoryImages` directory
- You must add the item `fishingrod` and `fishbait` to one of your in-game shops or have a place for your players to obtain.

## Preview
https://www.youtube.com/watch?v=kLLPGJIK3Q0


# Support
<a href='https://discord.gg/79zjvy4JMs'>![Discord Banner 2](https://discordapp.com/api/guilds/1025493337031049358/widget.png?style=banner2)</a>
