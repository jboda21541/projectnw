#! /bin/bash
call(){
    echo Type the topic_name
    read topic_name
    echo Type the file_name.cvs:
    read file_name
    echo sub $topic_name $file_name
}

call