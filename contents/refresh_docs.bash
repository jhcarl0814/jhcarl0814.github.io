#!/bin/bash

export PATH="$PATH:$(realpath '../tools/awk_expand_commands')";

function ls() { command ls --color=always "$@"; }
export -f ls;

mkdir --parents '../docs'

# awk_expand_commands './index.template.html' | tee '../docs/index.html' | awk '{ printf("| %s%s", $0, RT); }; END { if (RT == "" && $0 == "") printf("| \n"); else { if (RT == "") printf("\n"); else printf("| \n"); } }';
awk_expand_commands './index.template.html' >'../docs/index.html'
