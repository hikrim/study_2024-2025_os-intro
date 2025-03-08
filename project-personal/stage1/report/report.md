---
## Front matter
title: "Отчет по первому этапу индивидуального проекта"
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

Размещение на Github pages заготовки для персонального сайта.

# Задание

- Установить необходимое программное обеспечение.
- Скачать шаблон темы сайта.
- Разместить его на хостинге git.
- Установить параметр для URLs сайта.
- Разместить заготовку сайта на Github pages.


# Теоретическое введение

https://github.com/wowchemy/wowchemy-hugo-themes

# Выполнение лабораторной работы

![hugo](image/1.jpg){#fig:001 width=100%}

Устанавливаем Hugo.

![bin](image/2.jpg){#fig:002 width=100%}

Создаём папку bin в домашнем каталоге.

![hugo in bin](image/3.jpg){#fig:003 width=100%}

Переносим исполняемый файл Hugo в bin.

![repository](image/4.jpg){#fig:004 width=100%}

Создаём репозиторий по шаблону.

![clone](image/5.jpg){#fig:005 width=100%}

Клонируем его в ~/work.

![~/bin/hugo](image/6.jpg){#fig:006 width=100%}

Выполняем ~/bin/hugo, после удаляем public.

![~/bin/hugo server](image/7.jpg){#fig:007 width=100%}

Выполняем ~/bin/hugo server для просмотра локального сайта, видимого только для создателя.

![hikrim.github.io](image/8.jpg){#fig:008 width=100%}

Создаём новый репозиторий с названием типа "username".github.io.

![clone](image/9.jpg){#fig:009 width=100%}

Клонируем его рядом с blog.

![main](image/10.jpg){#fig:010 width=100%}

Переходим в него, создаем ветку main.

![README](image/11.jpg){#fig:011 width=100%}

Создаём README и отправляем его на сервер.

![repository view](image/12.jpg){#fig:012 width=100%}

Преобразованный репозиторий.

![blog and hikrim.github.io](image/13.jpg){#fig:013 width=100%}

Переходим в blog и подключаем к нему hikrim.github.io

![~/bin/hugo](image/14.jpg){#fig:014 width=100%}

Снова выполняем ~/bin/hugo.

![public -v](image/15.jpg){#fig:015 width=100%}

Переходим в public и проверяем что репозитории связаны.

![git push](image/16.jpg){#fig:016 width=100%}

Отправляем файлы на сервер.

![final site](image/17.jpg){#fig:017 width=100%}

Получившейся сайт, на который могут зайти любые пользователи.

# Выводы

Мы научились создавать сайт Github pages

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
