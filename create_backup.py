#!/usr/bin/env python3

from datetime import date
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED

HOME = Path.home()
TARGET_DIRS = ['Downloads', 'Documents']
ZIP_FILE = f'home-backup-{date.today()}.zip'

clear_line = "\r\x1b[K"  # \r = carriage return. "\x1b[K" clears from cursor to end of line.

if __name__ == '__main__':
    with ZipFile(ZIP_FILE, mode='w', compression=ZIP_DEFLATED) as zipf:
        for folder_name in TARGET_DIRS:
            folder_path = HOME / folder_name
            for file_path in folder_path.glob('**/*'):  # shell cmds are weird
                if file_path.is_file():
                    # Store path relative to home
                    arcname = file_path.relative_to(HOME)
                    print(f"{clear_line}➕ Backing up: {arcname}", end='', flush=True)
                    zipf.write(file_path, arcname)
    print(f'\n✅ Backup complete: {ZIP_FILE}')
