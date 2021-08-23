#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [[ "$1" == "" ]] ; then
  echo "module name needed"
  exit 1
fi


MODULE=$1
MOD_DIR=src/${MODULE}

mkdir -p ${MOD_DIR}
mkdir -p tests
touch ${MOD_DIR}/__init__.py
touch ${MOD_DIR}/${MODULE}.py
touch tests/${MODULE}_tests.py
cp -f ${SCRIPT_DIR}/LICENSE .
cp ${SCRIPT_DIR}/py.gitignore .gitignore
touch requirements.txt
touch pyproject.toml
sed -e "s/{{MODULE}}/${MODULE}/g" ${SCRIPT_DIR}/setup.py > setup.py
sed -e "s/{{MODULE}}/${MODULE}/g"  ${SCRIPT_DIR}/Dockerfile > Dockerfile
cp ${SCRIPT_DIR}/build.sh .
sed -e "s/{{MODULE}}/${MODULE}/g"  ${SCRIPT_DIR}/env.sh > env.sh

git add .

