[![Build Status](https://travis-ci.com/jcs090218/jcs-emacs-init.svg?branch=master)](https://travis-ci.com/jcs090218/jcs-emacs-init)
[![License](https://img.shields.io/badge/License-BSD%202--Clause-orange.svg)](https://opensource.org/licenses/BSD-2-Clause)


# jcs-emacs-init
> An Emacs configuration bundle.

This is Jen-Chieh Shen's emacs configuration, repeatedly utilized 
and modified since 2015, hopefully this could help someone who is 
new or struggle with Emacs. This configuration should works on 
most OSs, indicates Windows, Linux and MacOS.
<br/>

Emacs itself supports multiple programming languages. I managed 
all the programming languages I personally used. Indeed, I am 
a penchant to numerous technologies, incorporate hardware, firmware 
and software. Here is the list of programming languages I know 
and it has extended from this configuration.

* ActionScript 2.0 or 3.0 / Assembly Language
* BASIC / Batchfile
* C / C++ / C# / Clojure / CMake / COBOL / CSS
* Emacs Lisp
* GLSL / Go
* Haskell / Haxe / HTML
* INI
* JSON / Java / JavaScript
* Lisp / Lua
* Makefile
* Objective-C
* Perl / PHP / Python
* Ruby / Rust
* Sass / Scala / SCSS / Shell / SQL / Swift
* TypeScript
* Verilog / Vim script
* XML
* YAML

This configuration polished and goes toward to the modern 
text editor, or even better, it goes beyond modern IDE. 
e.g. [Atom](https://atom.io/), [Brackets](http://brackets.io/), 
[Sublime Text 2](https://www.sublimetext.com/2) or [3](https://www.sublimetext.com/), 
[Visual Studio Code](https://code.visualstudio.com/), etc. 


## Startup Time

The average startup time for this configuration is around 
`15` to `25` seconds. You can use command `emacs-init-time` 
to check the startup time on your machine. Not quite sure what 
causes that much of performance, hopefully, I'm able to lower 
the startup time down to `5` to `15` seconds.

**Edit:** After version `5.3.2`, the average startup time is 
around `5` to `15` seconds. Solved this issue by removing 
unnecessary `require` keyword load file and use `:defer` keyword 
with `use-package` package to delay some packages load time.

*P.S. Here is a great article about 
[Speeding Up Emacs](https://anuragpeshne.github.io/essays/emacsSpeed.html)
 written by 
[Anurag Peshne](https://github.com/anuragpeshne).*


## Features
* *N/A*


## Powered by

* *Abbreivation Definition* - powered by 
[project-abbrev](https://github.com/elpa-host/project-abbrev).
* *Auto Completion* - powered by 
[company](https://github.com/company-mode/company-mode).
* *Auto Highlight Symbol* - powered by 
[auto-highlight-symbol-mode](https://github.com/mhayashi1120/auto-highlight-symbol-mode).
* *Banner* - powered by 
[dashboard](https://github.com/emacs-dashboard/emacs-dashboard).
* *Binary/Hex Editor* - powered by 
[nhexl-mode](https://github.com/emacsmirror/nhexl-mode).
* *Collaborative Editing* - powered by 
[togetherly](https://github.com/zk-phi/togetherly) and 
[floobits](https://github.com/Floobits/floobits-emacs).
* *Context Menu* - powered by 
[right-click-context](https://github.com/zonuexe/right-click-context).
* *Docstring* - none, built-in to this configuration.
* *Execute Commands* - powered by 
[compile](https://www.emacswiki.org/emacs/CompilationMode).
* *File Explorer* - powered by 
[sr-speedbar](http://cedet.sourceforge.net/speedbar.shtml).
* *File Header* - powered by 
[file-header](https://github.com/alt-elpa/file-header).
* *Folding* - powered by 
[origami](https://github.com/gregsexton/origami.el).
* *Font* - powered by 
[use-ttf](https://github.com/elpa-host/use-ttf).
* *Highlight Matched Pairs* - powered by 
[show-paren-mode](https://www.emacswiki.org/emacs/ShowParenMode).
* *Recet Files* - powered by 
[recentf](https://www.emacswiki.org/emacs/RecentFiles).
* *Regexp* - powered by 
[re-builder](https://www.emacswiki.org/emacs/ReBuilder).
* *Line Annotation* - powered by 
[line-reminder](https://github.com/elpa-host/line-reminder).
* *Line Number* - powered by 
[display-line-numbers](https://github.com/emacs-mirror/emacs/blob/master/lisp/display-line-numbers.el)
and 
[linum](https://github.com/emacs-mirror/emacs/blob/master/lisp/linum.el).
* *Minimap* - powered by 
[sublimity](https://github.com/zk-phi/sublimity).
* *Mode Line* - powered by 
[powerline](https://github.com/milkypostman/powerline).
* *Multiple Cursor* - powered by 
[iedit](https://github.com/victorhge/iedit).
* *Navigation/Searcher* - powered by 
[ag](https://github.com/Wilfred/ag.el).
* *Package Archive* - powered by 
[melpa](http://melpa.org/),
* *Package Management* - powered by 
[use-package](https://github.com/jwiegley/use-package).
* *PDF Viewer* - powered by 
[pdf-tools](https://github.com/politza/pdf-tools).
* *Shell* - powered by 
[shell](https://www.emacswiki.org/emacs/ShellMode) and 
[exec-path-from-shell](https://github.com/purcell/exec-path-from-shell).
* *Simplify Usage* - powered by 
[helm](https://github.com/emacs-helm/helm).
* *Smooth Scrolling* - powered by 
[sublimity](https://github.com/zk-phi/sublimity).
* *Snippet* - powered by 
[yasnippet](https://github.com/joaotavora/yasnippet).
* *Source Control Management* - powered by 
[magit](https://github.com/magit/magit).
* *Startup Screen* - powered by 
[dashboard](https://github.com/emacs-dashboard/emacs-dashboard).
* *Syntax Check* - powered by 
[flycheck](http://www.flycheck.org/en/latest/).
* *Tab Bar* - powered by 
[tabber](https://github.com/dholm/tabbar).
* *Text Editing* - powered by 
[org-mode](https://orgmode.org/).
* *Theme* - none, self customized but close to 
[Visual Studio IDE](https://visualstudio.microsoft.com/)'s 
dark theme.
* *Undo/Redo* - powered by 
[undo-tree](https://www.emacswiki.org/emacs/UndoTree).


## Key Bindings

This configuration have all modes bind to the same set of 
key bindings. It benefits the developer would not need to change 
their key bindings while after the mode swichted. The key bindings 
set can be check in `./.emacs.jcs/jcs-key.el` file. 

P.S. 
* My work requires me to use 
[Visual Studio IDE](https://visualstudio.microsoft.com/) 
that being said the key bindings set are most likely compatible 
to 
[Visual Studio IDE](https://visualstudio.microsoft.com/). 
* Excepts keys that bind to `C-x` and `C-c`, Emacs are deeply binds 
to these two keys, and many packages also use these two keys 
for there preset keys. As you may know these two keys are often 
`cut` and `copy`, is awkward that I solved this by adding the 
same key stroke once again, hence the `cut` key is `C-x C-x` and 
the `copy` key is `C-c C-c`. 


## Installation

To install, clone this repo and copy the core `files`/`directories` 
to the emacs config directory accordingly. Make sure you backup 
your own configuration before you installed.
```bash
# clone this repo
$ git clone https://github.com/jcs090218/jcs-emacs-init.git

# change current directory to project directory
$ cd jcs-emacs-init

# copy init file to home
$ cp ./.emacs ~/

# copy core directories to home
$ cp -r ./.emacs.d ~/
$ cp -r ./.emacs.jcs ~/
```


## Supported Emacs versions

The config should run on Emacs 24.3 or higher, but I will 
recommend to always run on the latest Emacs version available 
on your machine. The ultimate goal is to design to have each 
version of config can run on their each according Emacs version 
base on the version what I'm currently running on my present 
machine. For each version record, you can check the 
[emacs_version_record](https://github.com/jcs090218/jcs-emacs-init/blob/master/emacs_version_record.txt)
file at the root of the project directory.
