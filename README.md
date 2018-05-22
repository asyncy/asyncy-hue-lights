# asyncy-hue-lights
Hue lights control for Asyncy.


```coffee
lights = hue lights
light_ids = lights keys
colors = ['red', 'blue', 'pink', 'majenta', '00f9ff', 'orange']

for light_id in light_ids
  random_int = random integer lo:0 hi:5
  hue lights light:light_id color:colors[random_int]
```
## Usage
```coffee
hue config                                             # view the hue config
hue lights                                             # get a list of lights
hue lights id:5                                        # get information about light 5
hue lights id:5,6,7 action:on                          # turn lights 5 6 and 7 on
hue lights action:on                                   # turn all lights on
hue lights id:1 color:ff0000                           # turn light 1 red
hue lights id:1 color:red                              # same as above
hue lights id:1 action:increase-brightness by:10       # increase the brightness by 10 (out of 254)
hue lights id:1 action:decrease-brightness by:10       # decrease the brightness by 10 (out of 254)
hue lights id:1 action:set-brightness to:100           # set the brightness to 100 (out of 254)
hue lights id:1 action:increase-brightness by:+10%.    # increase the brightness by 10%
hue lights id:1 action:decrease-brightness by:10%      # decrease the brightness by 10%
hue lights id:1 action:set-brightness to:100%          # set the brightness to 100%
hue lights id:4,5 action:colorloop                     # enable the colorloop effect on lights 4 and 5
hue lights id:4,5 action:alert                         # blink lights 4 and 5 for 30 seconds
hue lights id:4,5 action:clear                         # clear any effects on lights 4 and 5
hue lights id:1 set:state                              # set the state on light 1 as passed in as JSON over stdin
hue rename id:1 new-name:light-name                    # set light 1's name to the given string
hue lights action:reset                                # reset all lamps to default (on, as if the bulb was just flipped on)
hue lights id:1,2 action:reset                         # reset just bulbs 1 and 2
```

Build with https://github.com/bahamas10/hue-cli.
