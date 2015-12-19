REBOL [
]
turnaround: function [
    {Change the directions. 
     For example if you have:
      arr: [1 2 3 4 5]
      arr: next next arr ; [3 4 5]
      arr2: turnaround arr [2 1]
     You see [2 1] when you look back. 
    } 
    series [series!]
    ][
    head-of-series
    position
    ][
    head-of-series: head series
    position: length? series
    skip reverse head-of-series position
    ]