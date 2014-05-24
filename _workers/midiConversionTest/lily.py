#!/usr/local/bin/python2.7
import re
import bpy

# Replace this with local .ly file
f = open("C:/Unity/AnDieMusik/Assets/_workers/midiConversionTest/inv1.ly")

# one step translates to this many Y units in Blender
step = .5

# the length, in blender units, of a single measure
xScale = 1


# have we started receiving notes yet?
parsing = False

# coordinates for cube
coordinates = (0, 0, 0)

# SYMBOLS TO PARSE INTO BLENDER INFORMATION:
# ~   = tie
# r   = rest
matchObj = []


# TRANSLATION .LY TO LIST
# =================
# translate .ly file to List<string>
for line in f:
  # stop reading at the end of the music notation
  if ("}" in line):
    parsing = False
    # are we reading the music? if so, translate it to blender blocks
  if (parsing):
    # grab a list of all note names divorced from special markings
    matchObj += (re.findall (r'([a-gr]\'?\d{0,2})', line))
  # start reading the music itself
  if ("relative" in line):
    parsing = True
  
  
# layer for Blender purposes
layer = [False] * 20
layer[0] = True

# TRANSLATE LIST TO BLENDER
currentNoteValue = 1
for m in matchObj:
  # check if the note will change the note value
  match = re.search(r'\D.*?(\d+)', m)
  # change the note value if applicable
  if match != None:
    currentNoteValue = (float)(match.group(1))
  currentWidth = xScale / currentNoteValue
  # FIX: Does Blender instantiate cube at center or at side? Change (currentWidth/2) if necessary
  new_place = (coordinates [0] + currentWidth, coordinates[1], coordinates[2])
  bpy.ops.mesh.primitive_cube_add(radius=currentWidth, location=new_place, layers=layer)
  # get ready for next X coordinate
  coordinates = (coordinates [0] + currentWidth * 2, 0, 0)

    





f.close()

