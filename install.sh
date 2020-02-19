#!/bin/sh
echo "Your os is $OSTYPE"
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install zbar
    pip install -r requirements.txt
else
    echo "not fully support. Do you want to try install this?(y/n)"
    read input
    if [$input=="y"]; then
        pip install -r requirements.txt
    else 
        echo "quit"
    fi
fi
