
# Кинопоиск Lite

Простое веб-приложение на PHP с собственной реализацией MVC-фреймворка для просмотра фильмов, оценок, комментариев и административного управления контентом.

---

## 🔧 Возможности

* Каталог фильмов с подробной информацией
* Система оценок (от 1 до 10) и комментариев
* Категории/жанры
* Регистрация и авторизация
* Админ-панель для управления фильмами и категориями

---

## ⚙️ Технологии

* **PHP 8.2+**
* **MySQL**
* **Bootstrap 5**
* **Собственный MVC-фреймворк**

---

## 📦 Установка

### 🔁 Вариант 1: через Lando (рекомендуется)

```bash
git clone https://github.com/eraimxan/Lando.git
cd kinopoisk-lite
lando start
lando composer install
```

### 🖥 Вариант 2: вручную

1. Клонируйте репозиторий в корень веб-сервера
2. Настройте виртуальный хост на папку `public/`
3. Установите зависимости:

   ```bash
   composer install
   ```

---

## 🗃 Настройка

### Конфигурация

Файлы конфигурации:

* `config/app.php` — имя и URL проекта
* `config/database.php` — доступ к БД

### База данных

```sql
CREATE DATABASE kinopoisk_lite CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
mysql -u username -p kinopoisk_lite < database/lamp.sql
```

### Доступ к загруженным файлам

```bash
# Linux/macOS:
ln -s $PWD/storage $PWD/public/storage

# Windows:
mklink /D public\storage storage
```

---

## 🧭 Основные маршруты

| URL                     | Метод    | Описание              |
| ----------------------- | -------- | --------------------- |
| `/`                     | GET      | Главная страница      |
| `/register`             | GET/POST | Регистрация           |
| `/login`                | GET/POST | Авторизация           |
| `/movie`                | GET      | Страница фильма       |
| `/categories`           | GET      | Жанры                 |
| `/admin`                | GET      | Панель администратора |
| `/admin/movies/add`     | GET/POST | Добавить фильм        |
| `/admin/categories/add` | GET/POST | Добавить жанр         |

---

## 👤 Роли пользователей

* **Пользователь**: просмотр, оценка, комментарии
* **Админ**: + управление фильмами/жанрами

---

## 🧱 Архитектура

Проект построен по шаблону **MVC**:

* Контроллеры: `src/Controllers`
* Модели: `src/Models`
* Представления: `views/`

Ключевые компоненты:

* `Router` — маршрутизация
* `Auth`, `Session` — управление пользователями
* `Database` — слой работы с БД

---

## 🛠 Добавление нового функционала

1. Контроллер → `src/Controllers`
2. Маршрут → `config/routes.php`
3. Шаблон → `views/pages`
4. Модель (если нужно) → `src/Models`

---

## 🐞 Отладка

Для включения ошибок — раскомментируйте в `public/index.php`:

```php
// ini_set('display_errors', 1);
// error_reporting(E_ALL);
```


