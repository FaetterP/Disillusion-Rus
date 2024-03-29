# Disillusion-Rus

Русификатор для Disillusion.  
!! В разработке

// Скриншоты

## Установка

Для запуска игра использует файл `.rgss3a`. Его получение сложное, поэтому оставляю ссылку на готовый файл.

// Ссылка на гугл диск  
// Инструкция по установке

## Получение файла .rgss3a

Выше уже есть готовый файл, но ниже будет способ его получения.  
Получение состоит из двух этапов. Сначала нужно будет *распаковать* файлы игры и получить их в удобном для редактирования виде. Далее нужно обратно *запаковать* их, чтобы игра из стима работала.

### Распаковка

+ При скачивании игры через Steam в папке с игрой есть файл `Game.rgss3a`. Это зашифрованный архив со всеми данными (локации, предметы, враги). Чтобы его распаковать я использовал утилиту [RGSS Extractor](https://github.com/KatyushaScarlet/RGSS-Extractor/releases).  
+ В ней нужно открыть этот файл и извлечь две папки: **Data** и **Graphics**. Эти папки появятся в папке с утилитой.  
+ После распаковки можно заметить файлы `.rvdata2`. Это файлы данных для *RPG Maker VX Ace*.  
+ Далее нужно создать новый проект в RPG MAKER VX Ace и перейти в папку с этим проектом. Сюда нужно переместить **все файлы игры из стима** и папки, полученные после распаковки rgss3a: **Data** и **Graphics**.
+ Если всё сделано правильно, в проект можно будет перезайти, и он не упадёт с ошибкой.  
+ Дальше можно менять все файлы через графический интегрфейс самой программы, но при таком подходе сложно вести историю коммитов, потому что в диффах не будет ничего понятно.  
+ Чтобы превратить файлы `rvdata2` в читаемый вид я использую утилиту [rvpacker](https://github.com/Solistra/rvpacker). Она на ruby, поэтому для продолжения нужно будет его установить. Также в коде этого гема допущена ошибка, потому что написанного метода не существует. Нужно перейти в исходный код этого пакета и исправить ошибку. Благо когда она падает, ruby сам говорит, что и где нужно исправить.

### Перевод и запаковка

+ Для перевода нужно скачать этот репозиторий и переместить папку **YAML** тоже в папку с проектом на RPG Maker.
+ Теперь нужно удалить папку `Data` и оставшийся со стима файл `Game.rgss3a`.
+ Далеее нужно открыть в этот папке cmd и запустить команду `rvpacker --action pack --project . --project-type ace`.
+ После этого будет неплохо проверить, что в проект всё ещё можно перезайти и запустить его.
+ Если всё правильно, то в главном меню должен быть русский текст.
+ Дальше нужно создать билд игры с зашифрованными данными. Для этого в RPG Maker нужно выбрать `File → Compress Game Data...`. В появившемся окне поставить галочку `Create Encrypted Archive` и нажать `Ok`. После несколькиз минут в указанном месте появится самораспаковывающийся `.exe`. Но если открыть его через 7-Zip, то там и будет перепрошитый `Game.rgss3a` с русским языком, который подходит для Steam.
