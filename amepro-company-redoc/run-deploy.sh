#!/bin/bash
echo "1 - Generate files."
	npm run build > /dev/null
echo "2 - Acess redoc deploy folder."
	cd web_deploy
echo "3 - Copy generated files to /doc folder"
	currentDirectory=$(pwd)
	cp -rf $currentDirectory"/." ../docs/company
echo "4 - Track files to gitHub"
	cd ..
	git add . 
echo "5 - Commit Files. What is the commit's name?"
	read commitName
echo "6 - Commit Files"
	git commit -m "$commitName
	request-checks: false"
echo "7 - Push to git"
	git push
echo "*********************************************
Deployed sucessfully, files published on git.
*********************************************"
