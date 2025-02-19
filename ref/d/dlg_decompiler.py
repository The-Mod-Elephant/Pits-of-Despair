#!/usr/bin/env python
import subprocess
import os

from subprocess import CompletedProcess

def decompile(dlg_file: str) -> CompletedProcess:
    return subprocess.run(["weidu", "--nofrom", dlg_file])

def get_all_dlg_files() -> list:
    return [f for f in os.listdir() if f.lower().endswith(".dlg")]

def main() -> None:
    for dlg_file in get_all_dlg_files():
        print(f"Decompiling {dlg_file}")
        decompile(dlg_file)
        succeeded = os.path.exists(f"{dlg_file[:-4]}.D")
        if not succeeded:
            print(f"Failed to decompile {dlg_file}")

if __name__ == "__main__":
    main()
