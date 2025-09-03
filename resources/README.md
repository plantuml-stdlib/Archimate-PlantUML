TODO: elaborate on the process to generate sprite-svg's

In brief
* `MastersheetArchimateSprites.svg` contains all icons, in 2 versions: 1 version using strokes and fills, and 1 version where all strokes/fills have been converted and union-ed
* The stroke-version is the top one, the unioned-path version is the bottom one
* Make modifications to the top ones, and then re-generate the unioned-path version
  * To create a new unioned-path version of an icon: 
    * clear the area where the current unioned-path version is (make sure to keep the invisible rectangle that determines the export size) 
    * select stroke-icon elements
    * Ctrl-D to duplicate
    * drag the duplicate down into the unioned-path area
    * `Path -> Stroke to Path`
    * `Path -> Union`
    * Assign the result to the correct layer for future exports (layer name: `Aspect_Type`, for example `Technology_Equipment`)
* These icons each live in their own layer
* To export sprite versions, perform batch-export of all layers that have an underscore in their name
  * For instance `Technology_Equipment`
* Not all icons are defined (for instance the Application Service is identical to Business Service), but the `generate_spriteinclude.sh` script will duplicate the SVGs that are used multiple times
* Run the `generate_spriteinclude.sh` to generate a new version of `ArchimateSprites.puml`
