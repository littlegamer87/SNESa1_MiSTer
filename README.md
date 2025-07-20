# SNESa1 for [MiSTer Platform](https://github.com/MiSTer-devel/Main_MiSTer/wiki)

A fork of the MiSTer SNES core with patches to the SA-1 implementation to mimic emulator behavior instead of real hardware, improving compatibility with ROM hacks that rely on inaccurate or non-standard SA-1 behavior. This fork is only intended for SA-1 ROM hacks. Use the official core for everything else. Includes upstream support for cheats, MSU-1, and save states. The core identifies itself as SNES to the MiSTer framework, so framework settings (inputs, filters, upscaling, etc.) are shared with the official core.

Original SNES core written by [srg320](https://github.com/srg320) and many contributors

## Differences
* SA-1 math operations return results after one clock cycle for early read compatibility
* SA-1 internal registers are now accessible from the SNES CPU    
* BW-RAM and I-RAM write protection disabled by default*
* New OSD option under the **Hardware** menu to toggle SA-1 behavior: **Emulator** (default) vs. **Accurate**

*Note: Changing the SA-1 behavior option during gameplay won't affect default values until the core is reset.

## Downloader script support
To enable automatic updates, edit `/media/fat/downloader.ini` and add:
```ini
[snesa1]
db_url = 'https://raw.githubusercontent.com/littlegamer87/SNESa1_MiSTer/master/db.json.zip'

[distribution_mister]
; Add your filters for the official repo here if needed.
; Do not use the [mister] section when using custom downloader databases.
```
