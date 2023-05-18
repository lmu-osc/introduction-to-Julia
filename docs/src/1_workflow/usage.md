# Working with Julia in VSCode

We will now learn how to use Julia in Visual Studio Code (VSCode) through some examples, so let's tackle everything together.
If you feel slightly overwhelmed at first, don't worry — that's perfectly natural.
It takes time to become familiar with a tool like VSCode.

## Create a folder for the workshop

First, we'll want to create a dedicated folder for our workshop.
VSCode isn't particularly friendly when it comes to navigating files/folders.
So don't try to use VSCode for that.
Instead, we will use our operating system for that, i.e., just use your Explorer/Finder and create a folder in a location that makes sense to you.
Once you've done that, you can open the folder in VSCode by navigating to the Menu Bar and selecting File > Open Folder and then selecting the folder you just created.

Next, let's create a new file within our workshop folder.
To do this, right-click within the folder's file explorer in VSCode, and select "New File."
Name this file `introduction.jl` and then open it by double-clicking on the file name.
In this file, write the following code:

```julia
println("Hello, Julia!")
```

Now, we'll execute this code using the Command Palette.
To open the Command Palette, press Ctrl+Shift+P (Windows/Linux) or Cmd+Shift+P (Mac).
In the Command Palette search bar, type "execute," and then look for the option "Julia: Execute Code in REPL and Move"
Take note what the displayed shortcut for executing code in the REPL is - you can use this shortcut in the the future to execute a line of code from your script.
Leave the command palette by clicking on the background, click on the line of code you just worte, and hit the shortcut to execute it. The code you've written should be executed, displaying "Hello, Julia!" in the REPL window that opens up at the bottom of VSCode.

Great! You've just executed your first line of Julia in VSCode!

## The Julia REPL

The Julia REPL (Read-Eval-Print Loop) is an interactive and modern command-line interface for the Julia programming language. It allows you to enter Julia expressions, execute them, and see the results immediately.
This makes the REPL a great place to experiment with Julia, test ideas, get help, and much more.

The REPL has several differend modes:

### Julia mode

This is the default mode when you start the REPL.
Here, you can enter and execute Julia expressions.
To return to Julia mode from any other mode, press Backspace.

!!! compat "Exercise"
    Add two numbers in the REPL.

```@raw html
<details>
<summary>show solution</summary>
<br>
```
!!! tip "Solution"
    ```julia
    julia> 3+4
    7
    ```
```@setup xxx
```
```@raw html
</details>
```

### Help mode

To access Help mode, press ?. In this mode, you can search for documentation and information about various Julia functions, types, and keywords.

!!! compat "Exercise"
    1. To find information on the println function, enter Help mode by pressing ?. Once in Help mode, simply type println and press Enter to retrieve the relevant documentation.
    2. Look for an alternative print function by entering "print" (with quotation marks) in the search field. Julia will subsequently provide a list of definitions where the string "print" appears in the associated documentation.

### Shell mode

To enter Shell mode, press `;`.
In this mode, you can execute shell commands (e.g., `ls`, `cd`, `mkdir`) as you would in your operating system's command prompt or terminal. This allows you to perform file and directory operations, or to start a command-line interface without leaving the Julia REPL.

!!! compat "Exercise"
    Enter Shell mode by pressing ;. 
    1. List the files in the current directory with `ls`.
    2. Create another Julia file in the current directory with `touch chapter1.jl`.

### Package mode

Access Package mode by pressing `]`.
This mode is dedicated to managing Julia packages using the built-in package manager, Pkg.
In Package mode, you can add, update, remove, and list installed packages, among other tasks.

!!! compat "Exercise"
    Enter Package mode by pressing `]`. 
    1. Add the Example package: `add Example`.
    2. List the installed packages: `status`.
    4. Discover what else you can type in Package mode by entering `help` or `?`.

## Summary

In this chapter, we created a folder for the workshop, executed our first Julia code, and explored the various modes of the Julia REPL, including Julia mode, Help mode, Shell mode, and Package mode.