
#!/bin/bash

cd $1 #passar a pasta git repository

FILES=`git ls-files --modified` #mudar para pegar todos que não estão no palco

for x in $FILES
do
    git add $x 
    echo "Commit para ( $x ) : "
    read COM
    git commit $x -m "$COM"
done

git push origin master;
