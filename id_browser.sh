# detects installed browser and returns location - only chrome & firefox supported 
got_chrome=$(which chrome)
if [[ $? -ne 0 ]]; then    
    got_ffx=$(which firefox)
    if [[ $? -ne 0 ]]; then
        exit 1
    else
        echo $got_ffx
    fi
else
    echo $got_chrome
fi
exit 1
    