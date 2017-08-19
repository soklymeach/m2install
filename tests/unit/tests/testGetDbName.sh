#!/usr/bin/env bash

CURRENT_DIR_NAME=$(basename $(pwd));
setRequest dbUser 'root'
setRequest basePath 'a/b'
assert getDbName 'root_a_b';

setRequest dbUser ''
setRequest basePath ''
assert getDbName ${CURRENT_DIR_NAME};

setRequest dbUser 'root'
setRequest basePath ''
assert getDbName "root_${CURRENT_DIR_NAME}";

setRequest dbUser ''
setRequest basePath 'some-path/abc/'
assert getDbName 'somepath_abc';

