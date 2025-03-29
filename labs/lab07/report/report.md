---
## Front matter
title: "Отчёт по лабораторной работе №7"
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

Ознакомление с файловой системой Linux, её структурой, именами и содержанием
каталогов. Приобретение практических навыков по применению команд для работы
с файлами и каталогами, по управлению процессами (и работами), по проверке исполь-
зования диска и обслуживанию файловой системы.

# Задание

1. Выполните все примеры, приведённые в первой части описания лабораторной работы.
2. Выполните следующие действия, зафиксировав в отчёте по лабораторной работе
используемые при этом команды и результаты их выполнения:
   1. Скопируйте файл /usr/include/sys/io.h в домашний каталог и назовите его equipment. Если файла io.h нет, то используйте любой другой файл в каталоге /usr/include/sys/ вместо него.
   2. В домашнем каталоге создайте директорию ~/ski.plases.
   3. Переместите файл equipment в каталог ~/ski.plases.
   4. Переименуйте файл ~/ski.plases/equipment в ~/ski.plases/equiplist.
   5. Создайте в домашнем каталоге файл abc1 и скопируйте его в каталог ~/ski.plases, назовите его equiplist2.
   6. Создайте каталог с именем equipment в каталоге ~/ski.plases.
   7. Переместите файлы ~/ski.plases/equiplist и equiplist2 в каталог ~/ski.plases/equipment.
   8. Создайте и переместите каталог ~/newdir в каталог ~/ski.plases и назовите его plans.
3. Определите опции команды chmod, необходимые для того, чтобы присвоить перечис- ленным ниже файлам выделенные права доступа, считая, что в начале таких прав нет:
   1. drwxr--r-- ... australia
   2. drwx--x--x ... play
   3. -r-xr--r-- ... my_os
   4. -rw-rw-r-- ... feathers
При необходимости создайте нужные файлы.
4. Проделайте приведённые ниже упражнения, записывая в отчёт по лабораторной работе используемые при этом команды:
   1. Просмотрите содержимое файла /etc/password.
   2. Скопируйте файл ~/feathers в файл ~/file.old.
   3. Переместите файл ~/file.old в каталог ~/play.
   4. Скопируйте каталог ~/play в каталог ~/fun.
   5. Переместите каталог ~/fun в каталог ~/play и назовите его games.
   6. Лишите владельца файла ~/feathers права на чтение.
   7. Что произойдёт, если вы попытаетесь просмотреть файл ~/feathers командой cat?
   8. Что произойдёт, если вы попытаетесь скопировать файл ~/feathers?
   9. Дайте владельцу файла ~/feathers право на чтение.
   10. Лишите владельца каталога ~/play права на выполнение.
   11. Перейдите в каталог ~/play. Что произошло?
   12. Дайте владельцу каталога ~/play право на выполнение.
5. Прочитайте man по командам mount, fsck, mkfs, kill и кратко их охарактеризуйте, приведя примеры.

# Теоретическое введение

Для создания текстового файла можно использовать команду touch.  
Формат команды:
       
       1 touch имя-файла

Для просмотра файлов небольшого размера можно использовать команду cat.  
Формат команды:

       1 cat имя-файла

Для просмотра файлов постранично удобнее использовать команду less.  
Формат команды:

       1 less имя-файла
       
Следующие клавиши используются для управления процессом просмотра:  

- Space — переход к следующей странице,
- ENTER — сдвиг вперёд на одну строку,
- b — возврат на предыдущую страницу,
- h — обращение за подсказкой,
- q — выход из режима просмотра файла.

Команда head выводит по умолчанию первые 10 строк файла.  
Формат команды:

       1 head [-n] имя-файла,

где n — количество выводимых строк.  

Команда tail выводит умолчанию 10 последних строк файла.  
Формат команды:

       1 tail [-n] имя-файла,

где n — количество выводимых строк.

# Выполнение лабораторной работы



![первая часть ЛР](image/1.jpg){#fig:001 width=100%}

![первая часть ЛР](image/2.jpg){#fig:002 width=100%}

![первая часть ЛР](image/3.jpg){#fig:003 width=100%}

Выполняем все примеры, приведённые в первой части описания лабораторной работы.

![io.h](image/4.jpg){#fig:004 width=100%}

Копируем файл /usr/include/sys/io.h в домашний каталог и назовите его equipment.

![ski.plases](image/5.jpg){#fig:005 width=100%}

В домашнем каталоге создаём директорию ~/ski.plases.

![equipment](image/6.jpg){#fig:006 width=100%}

Перемещаем файл equipment в каталог ~/ski.plases.

![equiplist](image/7.jpg){#fig:007 width=100%}

Переименовываем файл ~/ski.plases/equipment в ~/ski.plases/equiplist.

![equiplist2](image/8.jpg){#fig:008 width=100%}

Создаём в домашнем каталоге файл abc1 и копируем его в каталог ~/ski.plases, называем его equiplist2.

![equipment/](image/9.jpg){#fig:009 width=100%}

Создаём каталог с именем equipment в каталоге ~/ski.plases. Перемещаем файлы ~/ski.plases/equiplist и equiplist2 в каталог ~/ski.plases/equipment.

![newdir -> plans](image/10.jpg){#fig:010 width=100%}

Создаём и перемещаем каталог ~/newdir в каталог ~/ski.plases и называем
его plans.

![chmod](image/11.jpg){#fig:011 width=100%}

Определяем опции команды chmod, необходимые для того, чтобы присвоить перечис-
ленным ниже файлам выделенные права доступа, считая, что в начале таких прав
нет.

![passwd](image/12.jpg){#fig:012 width=100%}

Смотрим содержимое файла /etc/passwd.

![games](image/13.jpg){#fig:013 width=100%}

Копируем файл ~/feathers в файл ~/file.old. Перемещаем файл ~/file.old в каталог ~/play. Копируем каталог ~/play в каталог ~/fun. Перемещаем каталог ~/fun в каталог ~/play и называем его games.

![изменяем права и эксперементируем](image/14.jpg){#fig:014 width=100%}

Лишаем владельца файла ~/feathers права на чтение (cat -> отказано в доступе; cp: невозможно открыть 'feathers' для чтения: Отказано в доступе). Даём владельцу файла ~/feathers право на чтение. Лишите владельца каталога ~/play права на выполнение (cd play/ -> отказано в доступе). Дайте владельцу каталога ~/play право на выполнение (cd play выполняется).

![mount](image/15.jpg){#fig:015 width=100%}

Man по команде mount. Позволет монтировать диски и разделы.

![fsck](image/16.jpg){#fig:016 width=100%}

Man по команде fsck. Проверяет файловые систему на дисках и их разделах

![mkfs](image/17.jpg){#fig:017 width=100%}

Man по команде mkfs. Позволяет создавать файловые системы на разделах диска

![kill](image/18.jpg){#fig:018 width=100%}

Man по команде kill. Завершает процесс по PID (Process ID), который можно найти с помощью команды ps aux.

# Выводы

Мы ознакомились с файловой системой Linux, её структурой, именами и содержанием
каталогов. Приобрели практические навыки по применению команд для работы
с файлами и каталогами, по управлению процессами (и работами), по проверке использования диска и обслуживанию файловой системы.

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
