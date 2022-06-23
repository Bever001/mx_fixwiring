# mx_fixwiring

> Redm minigame

## Installation
1. Download this repo/codebase
2. Extract and place `mx_fixwiring` into your `resources` folder
3. Add `mx_fixwiring` to your `server.cfg` file
4. Restart your server


## How-to-configure
Client Side :

function CircuitGame('x', 'y', 'scale', 'size_game', 'sound_name')

    run something
    
end

## Parameters
x = position on screen

y = position on screen

scale = game size on screen in scale (Normally 1.0)

sound_name = audio name + format (example 1.ogg)

## Example
wiring = exports ["mx_fixwiring"]:CircuitGame('50%', '50%', '1.0', '30vmin', '1.ogg')

## Preview!
[Capture](https://user-images.githubusercontent.com/65199757/175098674-c228e34d-4d46-4f2f-b386-243deef4245d.PNG)
