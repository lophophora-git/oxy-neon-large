# 2019-04-08 - Cursor source conversion script
# Exports all of the SVG cursor files to a PNG of the specified size

SIZE=72
CWD=$(pwd)

if [ ! -d "$CWD/$SIZE" ]; then
    mkdir $CWD/$SIZE
fi

for s in *.svg; do 
    # Convert the path to a PNG file with inkscape, resulting in a file named xport
    inkscape -z -export $s -w $SIZE
    # Move the new file to the correct size directory.  The '%.svg' does a substring 
    # removal on the filename string of the current SVG file.
    mv xport $CWD/$SIZE/${s%.svg}.png
    echo "Exported $s as ${s%.svg}.png"
done


for c in *.cursor; do 
    # Edit the cursor file configuration to reflect the specified size.
    # sed substitutes numeric characters at the start of a line '^'
    # with the desired size value and saves the modified file to the
    # directory used for that size images.

    sed 's/^[0-9]*/72/g' <$c >./72/$c
done


