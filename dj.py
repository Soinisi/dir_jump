from pathlib import Path
import sys


def jump_directory(start_path, dir_globs):
    dir_glob = dir_globs.pop(0) if dir_globs else None
    if dir_glob:
        path = [p for p in Path(start_path).rglob(dir_glob) if p.is_dir()][0].resolve()
        return jump_directory(path, dir_globs)
    print(start_path)

if __name__ == "__main__":
    jump_directory(".", sys.argv[1:])
