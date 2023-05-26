#!/bin/bash

source "zshlilly.zsh"

function extract_markdown() {
	local inFile="src/$1"
	local outFile="docs/$2"

	cat ${inFile}|grep "###"|sed 's/\#\#\#//g'  > ${outFile}
}

if dir_exists "docs"; then
	rm docs/*
else
	mkdir docs
fi

extract_markdown "base.zsh" "base_functions.md"
extract_markdown "files.zsh" "file_functions.md"
extract_markdown "dirs.zsh" "directory_functions.md"
extract_markdown "loop.zsh" "looping_functions.md"
extract_markdown "exec.zsh" "execution_functions.md"
extract_markdown "process.zsh" "process_functions.md"
extract_markdown "init.zsh" "process_functions.md"
