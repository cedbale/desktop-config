
########################
# fonctions perso
########################
function xsed {
    if [ -n "$3" ]; then
		find . -name "*.$1" -print0 | xargs -0 sed -i 's/$2/$3/g'
	fi
}
function xgrep {
    find . -type f -name "*.$1" | xargs grep -i "$2"
}
function xreplace {
	find . -name '*.$1' -print0 | xargs -0 sed -i 's/$2/$3/g'
}
function xmail {
    cat $1  | mail -s "... envoi de mon fichier" cedbale@gmail.com
}

function go {
    if [ -n "$1" ]; then
        cd ~/www/p2p/$1/www
    fi
}

# Create function that will run when a certain phrase is typed in terminal
# and tab key is pressed twice
function _go_complete() {
    # fill local variable with a list of completions
    local COMPLETES=$(ls ~/www/)

    # we put the completions into $COMPREPLY using compgen
    COMPREPLY=( $(compgen -W "$COMPLETES" -- ${COMP_WORDS[COMP_CWORD]}) )
    return 0
}
complete -F _go_complete go

complete -F _go_complete publish

