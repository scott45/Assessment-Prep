#!/usr/bin/bash

BOLD='\e[1m'
BLUE='\e[34m'
RED='\e[31m'
YELLOW='\e[33m'
GREEN='\e[92m'
NC='\e[0m'

set -eo pipefail

info() {
    printf "\n${BOLD}${BLUE}====> $(echo $@ ) ${NC}\n"
}

warning () {
    printf "\n${BOLD}${YELLOW}====> $(echo $@ )  ${NC}\n"
}

error() {

    printf "\n${BOLD}${RED}====> $(echo $@ )  ${NC}\n"
    exit 1
}

success () {
    printf "\n${BOLD}${GREEN}====> $(echo $@ ) ${NC}\n"
}

is_success_or_fail() {
    if [ "$?" == "0" ]; then success $@; else error $@; fi
}

is_success() {
    if [ "$?" == "0" ]; then success $@; fi
}

function(){
    info "implementing this function"
    is_success "function has been run successfully"
}

if_function() {
    if [ "statement" ]; then
        do something;
     else
        do something else;
    fi
}

comparision_statement () {
    if [ "something" == 'something' ]; then
        do_this
    else
        do_that
    fi
}

main() {
    function
    if_function
    comparision_statement
}

main