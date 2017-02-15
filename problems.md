# Problems

## Subsets
#### Problem 1.
Write a function that takes a list and returns a list of all its sublists.
```
subsets [1;2;3];; (* should yield [[]; [3]; [2]; [2; 3]; [1]; [1; 3]; [1; 2]; [1; 2; 3]] *)
```
#### Problem 2.
Write a function that takes an int k and a list and returns a list of all its sublists of length k.
```
choose 2 [1;2;3;4];; (* should yield [[3; 4]; [2; 4]; [2; 3]; [1; 4]; [1; 3]; [1; 2]] *)
```
## Sorting
#### Problem 3.
Write a function that takes a list and returns the list sorted using the quicksort algorithm.
```
quick_sort [2;6;9;3;5;4;1;7] (* should yield [1;2;3;4;5;6;7;8;9] *)
```
#### Problem 4.
Write a function that takes a list and returns the list sorted using the mergesort algorithm.
```
merge_sort [2;6;9;3;5;4;1;7] (* should yield [1;2;3;4;5;6;7;8;9] *)
```

