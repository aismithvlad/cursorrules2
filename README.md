# Cursor Rules Repository

This repository contains optimized Cursor IDE rules and configurations for enhanced AI-assisted coding.

## Quick Setup

To add these cursor rules to any new project, run:

```bash
# Clone the cursorrules2 repository into your project
git clone https://github.com/aismithvlad/cursorrules2.git temp-cursorrules

# Copy the .cursor directory to your project root
cp -r temp-cursorrules/.cursor ./

# Clean up
rm -rf temp-cursorrules
```

## One-Line Setup

```bash
curl -sSL https://raw.githubusercontent.com/aismithvlad/cursorrules2/main/install.sh | bash
```

## Manual Setup

1. Clone this repository
2. Copy the `.cursor` directory to your project root
3. Restart Cursor IDE to load the new rules

## What's Included

- **Isolation Rules**: Advanced rule configurations for better AI context management
- **Core Rules**: Base configurations for optimal Cursor IDE performance
- **Level-based Rules**: Hierarchical rule organization (Level1-4)
- **Visual Maps**: Rule visualization and organization tools
- **Optimized Configurations**: Performance-tuned rule sets

## Project Structure

```
.cursor/
└── rules/
    └── isolation_rules/
        ├── Core/
        ├── Level1/
        ├── Level2/
        ├── Level3/
        ├── Level4/
        ├── Phases/
        ├── visual-maps/
        ├── main.mdc
        └── main-optimized.mdc
```

## Usage

Once installed, these rules will enhance your Cursor IDE experience with:
- Better AI context understanding
- Optimized code suggestions
- Enhanced project organization
- Improved development workflow

## Contributing

Feel free to submit pull requests with improvements to the cursor rules configuration.