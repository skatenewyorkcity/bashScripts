# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#opens default browser and passes argument 'web' to $1 the first argument or
#parameter
function web {
  xdg-open http://$1
}

#passes arguments/parameter which are websites then the for loop appends to http://
function webset {
  for sites in google.com wikipedia.com youtube.com
  do
    xdg-open http://$sites
  done
}

#passes each word in google search query and appends to parent link
function sah {
  xdg-open http://google.com/#q="$*"
}

#passes each word in youtube search query and appends to parent link
function yts {
  xdg-open http://youtube.com/results?search_query="$*"
}

#passes each word in wikipedia search query and appends to parent link
function wiks {
  xdg-open http://wikipedia.org/wiki/"$*"
}
