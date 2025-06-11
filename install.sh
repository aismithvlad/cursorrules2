#!/bin/bash

# Cursor Rules Installation Script
# This script downloads and installs cursor rules to your current project

set -e

echo "🎯 Installing Cursor Rules..."

# Check if we're in a directory that looks like a project
if [ ! -f "package.json" ] && [ ! -f "requirements.txt" ] && [ ! -f "Cargo.toml" ] && [ ! -f ".git" ]; then
    echo "⚠️  Warning: This doesn't look like a project directory."
    echo "   Consider running this from your project root."
    read -p "Continue anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ Installation cancelled."
        exit 1
    fi
fi

# Create temporary directory
TEMP_DIR=$(mktemp -d)
echo "📥 Downloading cursor rules..."

# Clone the repository
if git clone https://github.com/aismithvlad/cursorrules2.git "$TEMP_DIR" 2>/dev/null; then
    echo "✅ Downloaded successfully"
else
    echo "❌ Failed to download cursor rules repository"
    echo "   Make sure you have git installed and the repository exists"
    exit 1
fi

# Check if .cursor directory already exists
if [ -d ".cursor" ]; then
    echo "⚠️  .cursor directory already exists"
    read -p "Overwrite existing cursor rules? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "🗑️  Removing existing .cursor directory..."
        rm -rf .cursor
    else
        echo "❌ Installation cancelled."
        rm -rf "$TEMP_DIR"
        exit 1
    fi
fi

# Copy the .cursor directory
echo "📋 Installing cursor rules..."
cp -r "$TEMP_DIR/.cursor" ./

# Clean up
rm -rf "$TEMP_DIR"

echo "🎉 Cursor rules installed successfully!"
echo "📁 Rules installed in: $(pwd)/.cursor"
echo "🔄 Restart Cursor IDE to apply the new rules."
echo ""
echo "📚 Documentation: https://github.com/aismithvlad/cursorrules2"