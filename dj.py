from pathlib import Path
import sys


def jump_directory(dir_glob):
    print([p for p in Path(".").rglob(dir_glob) if p.is_dir()][0].resolve())




if __name__ == "__main__":
    jump_directory(sys.argv[1])
