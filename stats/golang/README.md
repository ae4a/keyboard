in fema

```
git ls-files | rg sh | xargs cat | grep -o . | sort | uniq -c | sort -rn  > stat_all.tmp; cat stat_all.tmp | rg -e '[0-9]+ [^a-zA-Zа-яА-Яё]' > stat_symbols.tmp; cat stat_all.tmp | rg -e '[0-9]+ [a-zA-Zа-яА-Яё]' > stat_letters.tmp

```

# Brackers

8640 (
8638 )
3813 }
3813 {
1206 [
1204 ]


()

1816 matches
1724 matched lines
126 files contained matches
220 files searched
89643 bytes printed
2484846 bytes searched
0.049671 seconds spent searching
0.024000 seconds total

[]

508 matches
437 matched lines
86 files contained matches
220 files searched
31845 bytes printed
2484846 bytes searched
0.041467 seconds spent searching
0.011266 seconds total

{}

176 matches
163 matched lines
62 files contained matches
220 files searched
10252 bytes printed
2484846 bytes searched
0.059182 seconds spent searching
0.012803 seconds total

So may be layout should be

!! CHOSEN

   (  )  {

   [  ]  } 

But if considere more of single stats

[  (  )  ]

   {  }  


