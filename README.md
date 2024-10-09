# Excitebike-Mimicry
Midterm Exam for the Intro to Computer Graphics class.

# Explanation to all Shaders
PART 2:
The Toon shader chosen to be added to player “motorcycle” was similar to the original example from class, only using half attenuation and adding a metallic component to mimic a real motorcycle’s metallic colors. Implemented a metallic material as well as a Toon material to ensure that the player looks both vibrant and metallic.
PART 3:
The chosen method of color correction was a color tint shader which forces all color in a materai, regardless of the chosen base color/material to appear similar to the red sands of a desert environment. Chosen method alters the hue of rgb values to resemble a predetermined material’s instead of the base color.
PART4:
Chosen shader was a LUT shader placed on camera. The expected effect was to edit the camera’s look to mimic the appearance of a shimmering desert/mirage. The shader file ensures that the overlay effect appears on camera at all moments while altering the look of all game objects is filtered differently. Sand was highlighted in its vibrance due to red values being drawn out by camera, whilst the metallic “motorcycle” object that represents the player looked more metallic with the LUT.
