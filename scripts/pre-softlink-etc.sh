#!/bin/bash

function create_softlink_neovim {
	local origin_neovim_path="/etc/nvim"
	local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
	local config_neovim_path="${git_root}/config"

	if [[ ! -f "${origin_neovim_path}" ]] && [[ ! -L "${config_neovim_path}" ]]; then
		ln -s "${config_neovim_path}" "${origin_neovim_path}"
		printf '%s\n' "create link to ${origin_neovim_path}."
	else
		printf '%s\n' "file ${origin_neovim_path} already existed."
	fi
}

create_softlink_neovim
