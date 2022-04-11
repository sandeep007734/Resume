if [ $# -lt 1 ]
then
	echo "Need the commit message $#"
	exit 1
fi

git config credential.helper store

# hg pull
# hg up

git pull

read -p "Pull done"
git add . -n
read -p "Commit?"


# hg add .
# hg addremove
# hg commit -m "$1" 
# hg push


git add .
git commit -m "$1"
git push
