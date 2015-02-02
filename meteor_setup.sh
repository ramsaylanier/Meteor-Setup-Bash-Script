#!/bin/bash
echo "Meteor Setup"

meteor remove autopublish
meteor remove insecure
meteor add iron:router

CLIENT=$PWD'/client'
SERVER=$PWD'/server'
LIB=$PWD'/lib'
PUBLIC=$PWD'/public'
ASSETS=$PWD'/client/assets'
CSS=$ASSETS'/css'
SCSS=$ASSETS'/scss'
COLLECTIONS=$LIB'/collections'
VIEWS=$CLIENT'/views'

touch $LIB'/router.js'
touch $PWD'/settings.json'

folders=($CLIENT $SERVER $LIB $PUBLIC $ASSETS $CSS $SCSS $COLLECTIONS $VIEWS)
for folder in "${folders[@]}"
 do
   mkdir $folder
 done