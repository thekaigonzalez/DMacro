# DMacro

DMacro is a scripting language to generate D properties.

## GMacro/DMacro

DMacro is a parser based on the [GMacro](https://github.com/thekaigonzalez/GMacro) with a corrected structure.

## File Tree

DMacro returns a list of properties with arguments, while some languages define properties/variables like this:

`m = 1`

DMacro defines variables like

`m(1)`

And that's the only method in DMacro.

## Inline statement

You can create multiple definitions in one line by using normal syntax

```
one_define(hello-world) two_define(goodbye-program)
```


## Strings

Strings are only allowed using the `"` operator.