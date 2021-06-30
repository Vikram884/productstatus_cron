DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id           INTEGER(11)    NOT NULL AUTO_INCREMENT                COMMENT '',
	name         VARCHAR(255)   NOT NULL DEFAULT ''                    COMMENT '',
	img_url      VARCHAR(255)   NOT NULL DEFAULT ''                    COMMENT '',
	status       TINYINT(1)     NULL                                   COMMENT '',
	create_ts    DATETIME       NOT NULL DEFAULT '2021-01-01 00:00:00' COMMENT '',
	last_updated TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '',

	PRIMARY KEY(id),
	UNIQUE KEY(img_url)
) ENGINE=InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT '';


INSERT INTO products SET id = NULL, name = 'Bag',        img_url = 'product_images/pbag.jpg',       create_ts = now();
INSERT INTO products SET id = NULL, name = 'Cup',        img_url = 'product_images/pcup.jpg',       create_ts = now();
INSERT INTO products SET id = NULL, name = 'Jacket',     img_url = 'product_images/pjacket.jpg',    create_ts = now();
INSERT INTO products SET id = NULL, name = 'Ladies Bag', img_url = 'product_images/pladiesbag.jpg', create_ts = now();
INSERT INTO products SET id = NULL, name = 'Laltern',    img_url = 'product_images/plaltern.jpg',   create_ts = now();
INSERT INTO products SET id = NULL, name = 'Paddle',     img_url = 'product_images/ppaddle.jpg',    create_ts = now();
INSERT INTO products SET id = NULL, name = 'Tshirt',     img_url = 'product_images/ptshirt.jpg',    create_ts = now();
INSERT INTO products SET id = NULL, name = 'Bushirt',    img_url = 'product_images/pbushirt.jpg',   create_ts = now();  -- this product has no image
INSERT INTO products SET id = NULL, name = 'Jeanse',     img_url = 'product_images/pjeanse.jpg',    create_ts = now();  -- this product has no image

