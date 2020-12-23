#!/usr/local/bin/fish

for f in github-repos/*
    echo $f
    fish $f
end
