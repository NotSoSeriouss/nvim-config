# NotSoSeriouss's Neovim Configuration

Welcome to my Neovim configuration repository! Here you'll find the setup I use for my Neovim editor, tailored to enhance productivity, streamline workflows, and make coding a breeze.

## Plugins

- **Colorizer**
  - Description: Adds color codes to color literals in your code for better visualization.

- **Co-pilot**
  - Description: Provides Lua development tools and utilities for Neovim.

- **Dap**
  - Description: Debugger adapter protocol integration for Neovim.

- **Harpoon.lua**
  - Description: A navigation manager for Neovim to easily switch between project files.

- **LSP Zero**
  - Description: A lightweight implementation of Language Server Protocol (LSP) for Neovim.

- **Lualine**
  - Description: A configurable statusline and tabline for Neovim.

- **Telescope**
  - Description: A highly extensible fuzzy finder for Neovim.

- **Toggle Term**
  - Description: A Neovim plugin for easily toggling the terminal window.

- **Nvim Tree**
  - Description: A file explorer for Neovim.

- **Treesitter**
  - Description: A parsing system for Neovim that provides syntax highlighting, code folding, and more.

- **Trouble**
  - Description: A Neovim plugin for managing and displaying code diagnostics.

## Configuration

My Neovim configuration uses `lazy` as the plugin manager. This means that plugins are only loaded when they are needed, which helps to keep startup times fast and efficient. Each plugin is configured to load lazily, ensuring that only essential functionality is loaded during startup, and additional features are loaded on-demand as required.

## Installation

1. Make sure you have Neovim installed on your system.
2. Clone this repository to your Neovim configuration directory (usually `~/.config/nvim/`).
3. Install the required plugins using your preferred package manager (e.g., `:PackerInstall` for `packer.nvim`).
4. Configure any additional settings or key mappings as desired.
5. Enjoy your enhanced Neovim experience!

## Feedback and Contributions

If you have any feedback, suggestions, or bug reports, keep them for your own. This is MY config, and I take the decisions.
