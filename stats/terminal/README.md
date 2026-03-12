```
atuin history list | sed -E 's/^[0-9-]{10} [0-9:]{8}[[:space:]]+//; s/[[:space:]][0-9]+m?s$//' | grep -o . | sort | uniq -c | sort -rn  > stat_all.tmp; cat stat_all.tmp | rg -e '[0-9]+ [^a-zA-Zа-яА-Яё]' > stat_symbols.tmp; cat stat_all.tmp | rg -e '[0-9]+ [a-zA-Zа-яА-Яё]' > stat_letters.tmp

```
