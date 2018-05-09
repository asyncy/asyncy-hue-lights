# asyncy-hue-lights
Hue lights control for Asyncy.


```coffee
lights = hue lights
light_ids = lights keys
colors = ['red', 'blue', 'pink', 'majenta', '00f9ff', 'oragne']

for light_id in light_ids
  random_int = random integer lo:0 hi:5
  hue lights light:light_id color:colors[random_int]
```
