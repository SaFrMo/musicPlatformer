#!/usr/local/bin/python2.7
import re
import bpy

# Replace this with local .ly file
f = open("C:/Unity/AnDieMusik/Assets/_workers/midiConversionTest/inv1.ly")

# number of steps for each note, with middle C as basis
note_reference = { "c" : 0, "cis" : 1, "des" : 1, "d" : 2, "dis" : 3, "ees" : 3, "e" : 4, "f" : 5, "fis" : 6, "ges" : 6, "g" : 7, "gis" : 8, "aes" : 8, "a" : 9, "ais" : 10, "bes" : 11, "b" : 11, "r" : 0 }

# one step translates to this many Y units in Blender
step = .1

# the length, in blender units, of a single measure
xScale = 1


# have we started receiving notes yet?
parsing = False

# coordinates for cube
coordinates = (0, 0, 0)

# SYMBOLS TO PARSE INTO BLENDER INFORMATION:
# ~   = tie
# r   = rest
# es  = flat
# is  = sharp
matchObj = []


# TRANSLATION .LY TO LIST
# =================
# translate .ly file to List<string>
for line in f:
  # for now, just delete "prall"
  line = line.replace("prall", "")
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

y_multiplier = 0

# TRANSLATE LIST TO BLENDER
currentNoteValue = 1
for m in matchObj:
  # X POSITION
  # =========================
  # check if the note will change the note value
  match = re.search(r'\D.*?(\d+)', m)
  # change the note value if applicable
  if match != None:
    currentNoteValue = (float)(match.group(1))
  currentWidth = xScale / currentNoteValue
  # Y POSITION
  # =========================
  note = re.search(r'([a-gis]*).*', m)
  pitch = note.group(0)[0]
  if "r" not in pitch:
    y_multiplier = note_reference[pitch]
  new_place = (coordinates [0] + currentWidth, step * y_multiplier, coordinates[2])
  # don't create a block if there's a rest
  if "r" not in m:
    bpy.ops.mesh.primitive_cube_add(radius=currentWidth, location=new_place, layers=layer)
  # get ready for next X coordinate
  coordinates = (coordinates [0] + currentWidth * 2, 0, 0)

    





f.close()