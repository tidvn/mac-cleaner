# macos-uninstall-cleaner

## Installation


## How to Use

1. First, execute

```bash
curl -o- https://raw.githubusercontent.com/tidvn/mac-cleaner/latest/find.sh | bash -s <KEYWORD>
```

2. The  script will save all result to `<KEYWORD>.txt`.

3. Review the result file **CAREFULLY**, delete all lines which are **NOT** related to the App you want to uninstall. **If there is any line you can't recognize, REMOVE THE LINE!**

4. Check the result again!

5. If you confirm everything is ready, run

```bash
curl -o- https://raw.githubusercontent.com/tidvn/mac-cleaner/latest/remove.sh | bash -s <KEYWORD>.txt
```

The  script will remove everything in the txt file.
