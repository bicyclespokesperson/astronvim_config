# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personalized Neovim configuration based on AstroNvim v5+. It uses lazy.nvim for plugin management and follows the AstroNvim plugin structure with custom configurations and additional plugins.

## Architecture

### Core Structure
- `init.lua` - Bootstrap file that loads lazy.nvim and calls setup files
- `lua/lazy_setup.lua` - Main lazy.nvim configuration with AstroNvim setup
- `lua/community.lua` - AstroCommunity pack imports (Lua, TypeScript)
- `lua/polish.lua` - Post-configuration customizations
- `lua/plugins/` - Plugin configurations following AstroNvim structure

### Key Configuration Files
- `lua/plugins/astrocore.lua` - Core AstroNvim settings, keymaps, vim options
- `lua/plugins/my_plugins.lua` - Custom plugins (vim-sandwich, vim-github-link)
- `lua/plugins/astrolsp.lua` - LSP configuration
- `lua/plugins/astroui.lua` - UI customizations
- `lazy-lock.json` - Locked plugin versions

### Linting Configuration
- `selene.toml` - Selene Lua linter configuration
- `neovim.yml` - Neovim-specific globals for linting

## Key Features & Customizations

### Custom Keybindings (astrocore.lua:87-103)
- `<Leader>lt` - Toggle between C/C++ source/header files
- `<Leader>gh` - Copy current line as GitHub link
- `<Leader>y` / `<M-y>` - Copy to system clipboard
- `<Leader>pp` / `<M-p>` - Paste from system clipboard
- `<Leader>;` - Append semicolon to end of line
- `<Leader>X` - Save and exit all files

### Vim Options (astrocore.lua:41-52)
- Relative line numbers enabled
- No text wrapping
- Scrolloff set to 7
- Cmdheight set to 2 (prevents search focus issues)
- System clipboard disabled by default

### Custom Plugins
- `vim-sandwich` - Surround text manipulation
- `vim-github-link` - Generate GitHub links for current line/selection

### Installed Language Packs
- Lua development pack
- TypeScript all-in-one pack
- JSON5 utility support

## Development Commands

### Neovim Management
```bash
# Launch Neovim
nvim

# Update plugins
:Lazy update

# Check plugin health
:checkhealth

# LSP info
:LspInfo

# Mason package manager
:Mason
```

### Plugin Development
```bash
# Lint Lua files with Selene
selene lua/

# Check syntax
nvim --headless -c "luafile init.lua" -c "quit"
```

## Configuration Guidelines

- Plugin configurations go in `lua/plugins/` following AstroNvim conventions
- Custom keymaps should be added to `astrocore.lua` mappings section
- New community packs should be imported in `community.lua`
- Personal plugins go in `my_plugins.lua`
- Use the existing code style and structure when adding new configurations
- Test configurations by restarting Neovim after changes