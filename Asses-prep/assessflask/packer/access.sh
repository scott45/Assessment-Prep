#!/bin/bash

User_permissions () {
    sudo chmod a+w $User;
}

main {
    User_permissions
}

main 