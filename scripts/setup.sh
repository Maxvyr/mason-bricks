#!/bin/zsh

INSTALL_ERROR=1
BRICKS_ADD_ERROR=2

# Installing Mason
echo "[x] Installing Mason"
where mason &> /dev/null

if [ $? -eq 0 ]
then
	echo "[x] Mason already installed, skipping"
else
	dart pub global activate mason_cli
	[ $? -eq 1 ] && echo "[x] Error installing Mason" && exit INSTALL_ERROR
	echo "[x] done"
fi

# Adding Bricks

for f in bricks/*
do
	brick=$(echo "$f" | cut -d/ -f2)

	echo "[x] Adding $brick"

	mason add -g "$brick" --path "$f" &> /dev/null
	[ $? -eq 1 ] && echo "[x] Error adding $brick" && exit BRICKS_ADD_ERROR
done

echo "[x] Done"
exit 0