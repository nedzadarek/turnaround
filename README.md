# turnaround
Alpha release. 
>add descriptions

# Examples:
```
arr: [1 2 3 4 5 6]
; == [1 2 3 4 5 6]
turnaround arr
; == []
arr
; == [6 5 4 3 2 1]
turnaround arr
; == []
arr
; == [1 2 3 4 5 6]
arr-back: turnaround arr
; == []
arr-back
; == []
append arr-back -1
; == [6 5 4 3 2 1 -1]
append arr-back -2
;== [6 5 4 3 2 1 -1 -2]
append arr-back -3
;== [6 5 4 3 2 1 -1 -2 -3]
arr
; == [6 5 4 3 2 1 -1 -2 -3]
```


```
>> s: "Foo"
== "Foo"
>> s: <a href   =   "http://www.wp.pl">
== <a href   =   "http://www.wp.pl">
>> find s "="
== <=   "http://www.wp.pl">
>> next find s "="
== <   "http://www.wp.pl">
>> trim next find s "="
== <"http://www.wp.pl">
>> s
== <a href   ="http://www.wp.pl">
>> trim find s
** Script Error: trim expected series argument of type: series port
** Near: trim find s
>>  find s "="
== <="http://www.wp.pl">
>> turnaround find s "="
== <   ferh a>
>> s
== <"lp.pw.www//:ptth"=   ferh a>
>> turnaround find s "="
== <"http://www.wp.pl">
>> trim turnaround find s "="
== <ferh a>
>> turnaround s
== <>
>> head s
== <a href="http://www.wp.pl">
>> s
== <a href="http://www.wp.pl">
```


It will reverse original series:
```
>> arr: [1 2 3 4 5 6]
== [1 2 3 4 5 6]
>> arr2: next next arr
== [3 4 5 6]
>> turnaround arr2
== [2 1]
>> arr
== [6 5 4 3 2 1]
>> reverse arr
== [1 2 3 4 5 6]
>> arr2
== [3 4 5 6]
```

# License 
In the license.md file.