
import subprocess
import os

from subprocess import CompletedProcess

def decompile(dlg_file: str) -> CompletedProcess:
    return subprocess.run(["weidu", "--nofrom", dlg_file])

def get_all_dlg_files() -> list:
    return [f for f in os.listdir() if f.endswith(".DLG")]


def run():
    for dlg_file in get_all_dlg_files():
        print(f"Uncompiling {dlg_file}")
        decompile(dlg_file)
        succeeded = os.path.exists(f"{dlg_file[:-4]}.D")
        if not succeeded:
            print(f"Failed to decompile {dlg_file}")

run()
