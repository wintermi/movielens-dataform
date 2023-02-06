#!/usr/bin/env zsh

# Data Download Directory
local MOVIELENS_DATA_DIR="${0:A:h}/../data"
MOVIELENS_DATA_DIR="${MOVIELENS_DATA_DIR:A}"

# Download the latest Movielens Public Dataset
print "\nDownloading 'ml-latest.zip' ...\n"
curl -SL -o "${MOVIELENS_DATA_DIR}/ml-latest.zip" "https://files.grouplens.org/datasets/movielens/ml-latest.zip"

# Extract all of the CSV data files
unzip -oj -d "${MOVIELENS_DATA_DIR}" "${MOVIELENS_DATA_DIR}/ml-latest.zip" "ml-latest/*.csv"

# Delete the downloaded ZIP archive
rm -f "${MOVIELENS_DATA_DIR}/ml-latest.zip"
