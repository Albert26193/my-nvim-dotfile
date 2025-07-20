#!/bin/bash

function create_softlink_neovim {
	local origin_neovim_path="${HOME}/.config"
	local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
	local config_kick_path="${git_root}/config/nvim-kick-start"
	local config_nvchad_path="${git_root}/config/nvim-nvchad"

	if [[ ! -f "${origin_neovim_path}" ]] && [[ ! -L "${config_kick_path}" ]]; then
		ln -s "${config_kick_path}" "${origin_neovim_path}"
		printf '%s\n' "create link to ${origin_neovim_path}."
	else
		printf '%s\n' "file ${origin_neovim_path} already existed."
	fi

	if [[ ! -f "${origin_neovim_path}" ]] && [[ ! -L "${config_nvchad_path}" ]]; then
		ln -s "${config_nvchad_path}" "${origin_neovim_path}"
		printf '%s\n' "create link to ${origin_neovim_path}."
	else
		printf '%s\n' "file ${origin_neovim_path} already existed."
	fi
}

create_softlink_neovim
