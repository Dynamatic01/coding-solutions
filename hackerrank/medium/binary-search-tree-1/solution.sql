/*
Enter your query here.
*/
select N,
case
 when P is NULL then "Root"
 when N  in (select P from Bst) then "Inner"
 else "Leaf"
End
from bst
order by N;
