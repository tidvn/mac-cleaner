# macos-uninstall-cleaner

## Installation

```bash
# Download
git clone git@github.com:flynnoct/macos-uninstall-cleaner.git && cd macos-uninstall-cleaner

# Granting Privilege
chmod +x ./find.sh
chmod +x ./remove.sh
```

## How to Use

1. First, execute

```bash
./find.sh <KEYWORD>
```

2. The `find.sh` script will save all result to `<KEYWORD>.txt`.

3. Review the result file **CAREFULLY**, delete all lines which are **NOT** related to the App you want to uninstall. **If there is any line you can't recognize, REMOVE THE LINE!**

4. Check the result again!

5. If you confirm everything is ready, run

```bash
./remove.sh <KEYWORD>.txt
```

The `remove.sh` script will remove everything in the txt file.