---
## Front matter
title: "Отчет по 6-ому этапу индивидуального проекта"
author: "Петлин Артём Дмитриевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Размещение двуязычного сайта на Github.

# Задание


   - Сделать поддержку английского и русского языков.
   - Разместить элементы сайта на обоих языках.
   - Разместить контент на обоих языках.
   - Сделать пост по прошедшей неделе.
   - Добавить пост на тему по выбору (на двух языках).


# Теоретическое введение

https://github.com/wowchemy/wowchemy-hugo-themes

# Выполнение лабораторной работы

![languages.yaml](image/1.jpg){#fig:001 width=100%}

Меняем кофигурационный файл нашего сайта, отвечающий за языки, так, чтобы теперь было два языка.

![params.yaml](image/2.jpg){#fig:002 width=100%}

Меняю название кнопки в левом верхнем углу на мое имя (осатльный кнопки верхнего хотбара и эта кнопка представлена только на английском так как не находится в контенте нашего сайта, который можно сделать под два языка).

![адаптация русского языка](image/3.jpg){#fig:003 width=100%}

![адаптация русского языка](image/4.jpg){#fig:004 width=100%}

Меняем некоторые заголовки на русские для версия русского языка.

![адаптация английского языка](image/5.jpg){#fig:005 width=100%}

![адаптация английского языка](image/6.jpg){#fig:006 width=100%}

Переводим все с русского на английский.

![русский язык](image/7.jpg){#fig:007 width=100%}

![русский язык](image/8.jpg){#fig:008 width=100%}

![русский язык](image/9.jpg){#fig:009 width=100%}

![русский язык](image/10.jpg){#fig:010 width=100%}

Вид сайта на русском языке.

![английский язык](image/11.jpg){#fig:011 width=100%}

![английский язык](image/12.jpg){#fig:012 width=100%}

![английский язык](image/13.jpg){#fig:013 width=100%}

![английский язык](image/14.jpg){#fig:014 width=100%}

Вид сайта на английском языке.

# Выводы

Мы разместили двуязычный сайт на Github.

# Список литературы{.unnumbered}

::: {.refs}
1. Dash, P. Getting Started with Oracle VM VirtualBox / P. Dash. – Packt Publishing Ltd, 2013. – 86 сс.
2. Colvin, H. VirtualBox: An Ultimate Guide Book on Virtualization with VirtualBox. VirtualBox / H. Colvin. – CreateSpace Independent Publishing Platform, 2015. – 70 сс.
3. Vugt, S. van. Red Hat RHCSA/RHCE 7 cert guide : Red Hat Enterprise Linux 7 (EX200 and EX300) : Certification Guide. Red Hat RHCSA/RHCE 7 cert guide / S. van Vugt. – Pearson IT Certification, 2016. – 1008 сс.
4. Робачевский, А. Операционная система UNIX / А. Робачевский, С. Немнюгин, О. Стесик. – 2-е изд. – Санкт-Петербург : БХВ-Петербург, 2010. – 656 сс.
5. Немет, Э. Unix и Linux: руководство системного администратора. Unix и Linux / Э. Немет, Г. Снайдер, Т.Р. Хейн, Б. Уэйли. – 4-е изд. – Вильямс, 2014. – 1312 сс.
6. Колисниченко, Д.Н. Самоучитель системного администратора Linux : Системный администратор / Д.Н. Колисниченко. – Санкт-Петербург : БХВ-Петербург, 2011. – 544 сс.
7. Robbins, A. Bash Pocket Reference / A. Robbins. – O’Reilly Media, 2016. – 156 сс.
:::
