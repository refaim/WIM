# WIM Addon Development Guidelines

## Version Updates

When updating the addon version:

1. Update version in **two places**:
   - `WIM.toc` - the `## Version:` field
   - `WIM.lua` - the `WIM_VERSION` variable

2. Update changelog in `Locales/Changelog/` for all locale files present in that folder.
