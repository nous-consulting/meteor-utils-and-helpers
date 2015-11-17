Nous Utils and Helpers for Meteor
---------------------------------

We're using a few helpers and utils in many our apps. Here are a few most used of them.

## Helpers
  * isEq val1 val2 -> e.g. {#if isEq 'a' value} ... {/if}
  * isIn val array -> e.g. {#if isIn 'a' array} ... {/if}
  * oneOf val1 val2 -> {#if oneOf good bad} Show message if good or bad are true {/if}
  * formatDate datetime, format -> will return given date in selected format
    * compact: "DD.MM"
    * short: "DD.MM.YYYY"
    * long: "DD MMMM YYYY (ddd)"
    * txt: "DD MMM"
  * monthByNumber month -> e.g. {{monthByNumber 1}} will return "January"

## For Arrays

  * `arr.unique`  -> returns array of uniq values or arr
  * `arr.merge(arr2)` -> merge two arrays
  * `arr.exclude(element)` -> will not touch original array, return array without element
  * `arr.remove(element)` -> will remove element from original array
  * `arr.clean()` -> will delete all `undefined` elements from array

## Property - nousProp

Sometimes we want to use some function as property, e.g.

```CoffeeScript
nousProp awesome = -> "You're awesome"

alert(awesome) # Will alert "You're awesome", don't need to call awesome() function
```

## Operation with Strings

  * srt.capitalize -> will capitalize given string (first letter will be capitalized)

