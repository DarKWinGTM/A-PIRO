#!/bin/bash

# A-PIRO Release Script
# Automates the release process for new versions

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 A-PIRO Release Script${NC}"
echo "=========================="

# Check if we're on master branch
if [[ $(git branch --show-current) != "master" ]]; then
    echo -e "${RED}Error: Must be on master branch to create release${NC}"
    exit 1
fi

# Get version from user
read -p "Enter version number (e.g., 1.2.0): " VERSION

if [[ ! $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo -e "${RED}Error: Version must be in format X.Y.Z${NC}"
    exit 1
fi

# Check if working directory is clean
if [[ -n $(git status --porcelain) ]]; then
    echo -e "${YELLOW}Warning: Working directory not clean${NC}"
    read -p "Continue anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Aborting release"
        exit 1
    fi
fi

echo "Creating release v$VERSION..."

# Create release notes
cat > RELEASE_NOTES.md << EOF
# A-PIRO v$VERSION Release Notes

## 🎯 Overview
A-PIRO v$VERSION includes improvements to repository discoverability, enhanced documentation, and new templates.

## 🆕 New Features
- Enhanced README with table of contents and better navigation
- Added blog writing template for content creation
- Added problem-solving template for general-purpose use
- GitHub Actions workflows for CI/CD
- Code of Conduct for community guidelines

## 🔧 Improvements
- Better search optimization with keywords and badges
- Enhanced discoverability sections
- Community contribution guidelines
- Real-time repository analytics badges

## 📚 Documentation
- Improved installation instructions
- Better example formatting with Input/Output structure
- Expanded use cases and applications

## 🐛 Bug Fixes
- Fixed corrupted characters in documentation
- Corrected command syntax throughout README
- Removed sensitive file paths for privacy

## 🤝 Community
- Added contributor guidelines
- Community recognition program
- Enhanced sharing and promotion guidelines

## 📦 Installation
\`\`\`bash
git clone https://github.com/DarKWinGTM/A-PIRO.git
cd A-PIRO
cp automatic-prompt-intent-recognition-optimization.md ~/.claude/agents/
\`\`\`

## 🔗 Links
- [GitHub Repository](https://github.com/DarKWinGTM/A-PIRO)
- [Documentation](https://github.com/DarKWinGTM/A-PIRO/tree/master/docs)
- [Issues & Feature Requests](https://github.com/DarKWinGTM/A-PIRO/issues)

---

**Thank you to all contributors!** 🙏
EOF

# Create tag
git add RELEASE_NOTES.md
git commit -m "Release v$VERSION: Enhanced discoverability and documentation

- Add comprehensive templates for content creation and problem solving
- Implement GitHub Actions for CI/CD
- Enhanced README with better navigation and search optimization
- Add Code of Conduct and community guidelines
- Improve repository discoverability features"
git tag -a "v$VERSION" -m "Release v$VERSION"

echo -e "${GREEN}✅ Release v$VERSION created successfully!${NC}"
echo "Run 'git push origin v$VERSION' to push the tag to GitHub"
echo "Then create a release on GitHub using RELEASE_NOTES.md"