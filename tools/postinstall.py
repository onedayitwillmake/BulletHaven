# EclipseLovesCinder post build script
# Creates OSX application bundle
# All files inside /Resources are copied to application bundle, if newer or don't exist
# Created by Mario Gonzalez
import sys
import os
import time
import shutil

argumentDictionary = {}
defaultApplicationName = "{$appName}"

# Loop thru args
for arg in sys.argv:
  if len( arg.split("=") ) == 2: # If args has 2 parts after split at =
    argumentDictionary[arg.split("=")[0].lstrip("--")] =  arg.split("=")[1] # insert into args dictionary

# Generate empty app bundle  directory
appBundle = argumentDictionary['cwd'] + "/" + argumentDictionary['appName'] + ".app"
if not os.path.exists(appBundle):
    os.makedirs(appBundle)
    
# Generate appBundle/MacOS directory
appBundleMacOS = appBundle + "/Contents/MacOS"
if not os.path.exists(appBundleMacOS):
    os.makedirs(appBundleMacOS)
    
# Generate Resources directory
appBundleResources = appBundle + "/Contents/Resources/"
if not os.path.exists(appBundleResources):
    os.makedirs(appBundleResources)

# Loop through Resources directory and copy to appBundleResources
resourcesDir = argumentDictionary['cwd'] + "/../Resources/"
for subdir, dirs, files in os.walk(resourcesDir):
    for file in files:
      originalFileModifiedAt = os.path.getmtime( resourcesDir + file ); # original file modified time
      shouldCopy = 0
      
      # It's the info.plist file - replace all occurences to HelloEclipse.app to match appName
      if file =="Info.plist":
      	f = open(resourcesDir + file, 'r')
      	lines = f.read()
      	f.close()
      	# Write to file
      	newFile = open(resourcesDir + "~Info.plist", 'w')
      	newFile.write(lines.replace(defaultApplicationName, argumentDictionary['appName']))
      	newFile.close()
      	
      # If the file exist, and it's modified time is newer - or it doesn't exist at all - copy it
      if os.path.exists(appBundleResources+file):  # Does exist, compare times
            if originalFileModifiedAt > os.path.getmtime( appBundleResources + file ):
              shouldCopy = 1
      else: # Doesn't exist, copy
            shouldCopy = 1;
            
      if shouldCopy: # copy the file
        print "Copying file: '" + file + "' ..."
        shutil.copy( resourcesDir + file, appBundleResources + file )
      else:
        print "Ignoring file: '" + file + "' (existing version has same timestamp) ..."
####################### END COPY RESOURCES IF NEWER

# Copy modified Info.plist file
if os.path.exists(resourcesDir +"~Info.plist"):  # Copy info.plist file to AppBundle/MacOS directory
  shutil.copy( resourcesDir + "~Info.plist", appBundle + "/Contents/Info.plist" )
  os.remove(resourcesDir + "~Info.plist")
  # Delete ~Info.plist to avoid confusion
else:
  print "!! (EclipseLovesCinder): Warning - No Info.plist file exist in resources directory!"
  
# Copy application binary
print "Moving binary..."
shutil.move( argumentDictionary['cwd'] +"/"+ argumentDictionary['appName'], appBundleMacOS + "/" +argumentDictionary['appName'] )

print "--- EclipseLovesCinder postbuild.py complete" 