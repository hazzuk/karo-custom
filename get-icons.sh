#!/usr/bin/env bash

# SPDX-FileCopyrightText: © 2026 hazzuk
#
# SPDX-License-Identifier: AGPL-3.0-only

set -euo pipefail

BASE_URL="https://hazzuk.github.io/assets/karo-custom"
DEST_DIR="./overrides/.icons/custom"

FILES=(
	"gluetun"
	"pocket-id"
	"prowlarr"
	"seerr"
	"sonarr"
	"traefik"
)

main() {

	mkdir -p "$DEST_DIR"

	for file in "${FILES[@]}"; do
		target="$DEST_DIR/$file.svg"

		if [[ -e "$target" ]]; then
			echo "error: $target already exists"
		else
			echo "downloading $file.svg..."
			curl --fail --location --silent --show-error --retry 3 \
				"$BASE_URL/$file.svg" --output "$target"
		fi
	done

	printf "process complete\n"
	exit 0

}

main
