#!/usr/bin/env bash
VENVFOLDER=.venv


# check if venv already exists if not create
[ ! -d $VENVFOLDER ] && python -m venv $VENVFOLDER

source ./$VENVFOLDER/bin/activate

# pip install -r requirements.txt


echo "setup venv. to deactivate type deacivate"