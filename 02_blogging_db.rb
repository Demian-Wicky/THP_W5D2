# L'application va accueillir plusieurs user et ils auront tous un nom.
CREATE TABLE `users` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT
);
INSERT INTO users (name) VALUES ('Jean-mi du 13');

# Chaque user peut créer plusieurs article et chaque article est forcément créé par un user.
CREATE TABLE `articles` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `title` TEXT,
  `content` TEXT
);
INSERT INTO articles (user_id, title, content) VALUES (1, 'Condimentum Parturient Magna Amet Consectetur', 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Vestibulum id ligula porta felis euismod semper. Nullam quis risus eget urna mollis ornare vel eu leo.');

# Un article peut appartenir à plusieurs category et chaque category peuvent avoir plusieurs article. Chaque category a un titre.
CREATE TABLE `categories` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `article_id` INTEGER,
  `title` TEXT
);
INSERT INTO categories (article_id, title) VALUES (1, 'Science');

# Une catégorie peut appartenir à plusieurs tag ; chaque tag a un titre et une couleur."
CREATE TABLE `tags` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `category_id` INTEGER,
  `title` TEXT,
  `color` TEXT
);
INSERT INTO tags (category_id, title, color) VALUES (1, 'Ipsum', 'blue');