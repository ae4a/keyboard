in fema

```
git ls-files | rg sh | xargs cat | grep -o . | sort | uniq -c | sort -rn  > stat_all.tmp; cat stat_all.tmp | rg -e '[0-9]+ [^a-zA-Zа-яА-Яё]' > stat_symbols.tmp; cat stat_all.tmp | rg -e '[0-9]+ [a-zA-Zа-яА-Яё]' > stat_letters.tmp

```
