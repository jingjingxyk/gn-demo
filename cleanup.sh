#!/bin/bash

set -exu

cleanFile()
{
  file=$1 ;
  if [ -f $file ] ; then
    rm -rf $file
    fi
}

cleanDir()
{
  file=$1 ;
  if [ -d $file ] ; then
    rm -rf $file
    fi
}
cleanFile 'CMakeCache.txt';
cleanFile 'cmake_install.cmake';
cleanFile 'Makefile';
cleanDir 'CMakeFiles';
cleanDir 'out';
cleanDir 'release';
cleanDir 'dist';