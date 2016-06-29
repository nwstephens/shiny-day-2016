# Shiny Modules

[Shiny modules](http://shiny.rstudio.com/articles/modules.html) are useful for building large, complex apps with reusable pieces of code. In this "Gapminder" example, there is a different app tab for each continent on earth. The code for the tab can be written as a module and can be reused for every continent. Using modules for this type of app greatly reduces the complexity of the code.

In order to run the "Gapminder" tab, install the gapminder package:

```{r}
install.packages("gapminder")
```

Modules function in their own namespace. Namespaces are a key concept for understanding Shiny modules. For details on how Shiny modules work, please refer to [this](http://shiny.rstudio.com/articles/modules.html) article.

## Details

A Shiny module is a piece of a Shiny app. It can’t be directly run, as a Shiny app can. Instead, it is included as part of a larger app (or as part of a larger Shiny module–they are composable).

Modules can represent input, output, or both. They can be as simple as a single output, or as complicated as a multi-tabbed interface festooned with controls/outputs driven by multiple reactive expressions and observers.

Once created, a Shiny module can be easily reused–whether across different apps, or multiple times in a single app (like a set of controls that needs to appear on multiple tabs of a complex app). Modules can even be bundled into R packages and used by other Shiny authors. Other Shiny modules will be created that have no potential for reuse, by simply breaking up a complicated Shiny app into separate modules that can each be reasoned about independently.

## Namespace

Input and output IDs in Shiny apps share a global namespace, meaning, each ID must be unique across the entire app. If you’re using functions to generate UI, and those functions generate inputs and outputs, then you need to ensure that none of the IDs collide.

In computer science, the traditional solution to the problem of name collisions is namespaces. As long as names are unique within a namespace, and no two namespaces have the same name, then each namespace/name combination is guaranteed to be unique. Many systems will let you nest namespaces, so a namespace doesn’t need a name that’s globally unique, just unique within its parent namespace.

