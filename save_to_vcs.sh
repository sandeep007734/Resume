if [ $# -lt 1 ]
then
	echo "Need the commit message $#"
	exit 1
fi

hg pull
hg up
git pull

read -p "Pull done"

hg add .
git add .

hg commit -m "$1" 
hg push

git config credential.helper store

git commit -m "$1"
git push
