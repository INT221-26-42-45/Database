USE `int221`;

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
    `brandid`    VARCHAR(6) NOT NULL,
    `brandname`  VARCHAR(40) NOT NULL
);

ALTER TABLE `brands` ADD CONSTRAINT `brands_pk` PRIMARY KEY ( `brandid` );

DROP TABLE IF EXISTS `colorofproduct`;

CREATE TABLE `colorofproduct` (
    `productid`         VARCHAR(6) NOT NULL,
    `colorid`           VARCHAR(6) NOT NULL,
    `colorofproductid`  VARCHAR(6) NOT NULL
);

ALTER TABLE `colorofproduct` ADD CONSTRAINT `colorofproduct_pk` PRIMARY KEY ( `colorofproductid` );

DROP TABLE IF EXISTS `colors`;

CREATE TABLE `colors` (
    `colorid`    VARCHAR(6) NOT NULL,
    `colorname`  VARCHAR(15) NOT NULL
);

ALTER TABLE `colors` ADD CONSTRAINT `colors_pk` PRIMARY KEY ( `colorid` );

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
    `productid`           VARCHAR(6) NOT NULL,
    `productname`         VARCHAR(40) NOT NULL,
    `productcode`         VARCHAR(12) NOT NULL,
   `productdescription`  VARCHAR(1000) NOT NULL,
    `producttype`         VARCHAR(20) NOT NULL,
    `productsize`         VARCHAR(10) NOT NULL,
    `productprice`        DECIMAL(10, 2) NOT NULL,
    `productdate`         DATE NOT NULL,
    `productimg`          BLOB,
    `brandid`             VARCHAR(6) NOT NULL
);

ALTER TABLE `products` ADD CONSTRAINT `products_pk` PRIMARY KEY ( `productid` );

ALTER TABLE `products` ADD CONSTRAINT `products_uk` UNIQUE ( `productname` );

ALTER TABLE `products`
    ADD CONSTRAINT `brandid` FOREIGN KEY ( `brandid` )
        REFERENCES `brands` ( `brandid` );

ALTER TABLE `colorofproduct`
    ADD CONSTRAINT `colorofproduct_colors_fk` FOREIGN KEY ( `colorid` )
        REFERENCES `colors` ( `colorid` );

ALTER TABLE `colorofproduct`
    ADD CONSTRAINT `colorofproduct_products_fk` FOREIGN KEY ( `productid` )
        REFERENCES `products` ( `productid` );

/*Indert Data Collection*/

/*Data for the table Brands*/
insert into `brands` values
('B001', 'Adidas');

insert into `brands` values
('B002', 'Nike');

insert into `brands` values
('B003', 'New Balance');

insert into `brands` values
('B004', 'Converse');

insert into `brands` values
('B005', 'Vans');

insert into `brands` values
('B006', 'Fila');

/*Data for the table Colors*/
insert into `colors` values
('C001', 'Black');

insert into `colors` values
('C002', 'White');

insert into `colors` values
('C003', 'Gray');

insert into `colors` values
('C004', 'Green');

insert into `colors` values
('C005', 'Blue');

insert into `colors` values
('C006', 'Navy Blue');

insert into `colors` values
('C007', 'Purple');

insert into `colors` values
('C008', 'Pink');

insert into `colors` values
('C009', 'Red');

insert into `colors` values
('C010', 'Yellow');


/*Data for the table products*/
insert  into `products`  values 
('P00001', 'STAN SMITH', 'AD00001', 'Trying to decide between sporty casual and dressed-up glam? Why not do both? These adidas Stan Smith shoes have the same buttery-soft leather upper as the 1971 original, dressed up with sparkling crystals from Swarovski.', 'Men/Women', '35.5-44', '3200.00', '2020-09-13', null, 'B001' );

insert  into `products`  values 
('P00002', 'NMD R1', 'AD00002', 'the NMD legacy in these adidas NMD_R1 Shoes. Plush Boost cushioning keeps your city adventure feeling like you are walking on clouds. And since your head is sometimes up there, it is not a bad place for your feet to be too. Great for those sunup to sundown days, the soft knit textile upper doubles down on the comfort.', 'Men/Women', '35.5-44', '4600.00', '2020-06-04', null, 'B001' );

insert  into `products`  values 
('P00003', 'ULTRABOOST DNA', 'AD00003', 'Run to move your body. Run to clear your head. The adidas Ultraboost DNA Shoes give you endless energy over the miles. The sleek silhouette makes them a favourite beyond the world of running. An adidas Primeknit upper brings comfort to your everyday wandering too.', 'Men/Women', '35.5-44', '6000.00', '2020-07-07', null, 'B001' );

insert  into `products`  values 
('P00004', 'ULTRABOOST 21', 'AD00004', 'Prototype after prototype. Innovation after innovation. Testing after testing. Meet us in the hot pursuit of the pinnacle harmonization of weight, cushioning, and responsiveness. Ultraboost 21. Say hello to incredible energy return.', 'Men/Women', '35.5-44', '6500.00', '2020-08-21', null, 'B001' );

insert  into `products`  values 
('P00005', 'Superstar', 'AD00005', 'Designed for basketball in the 70s, glorified by hip-hop fans of the 80s, the adidas Superstar has become a must-have item for today street-dwellers. The world-famous seashell design retains the original style and protection of the basketball court, eliminating the worry of being hit by your feet at festivals or on the street. Maintain the original look with jagged 3-Stripes and the adidas Superstar logo in a square frame.', 'Men/Women', '35.5-44', '3200.00', '2020-08-15', null, 'B001' );

insert  into `products`  values 
('P00006', 'SLIP-ON SUPERSTAR', 'AD00006', 'Why waste time tying your shoes? When you are ready to travel and teleport to meet your friends immediately. The adidas Superstar was originally an icon of the basketball court. But now it has become a shoe that stands out on the road, runway, or anywhere else, reinforcing its original design with a smooth upper and comfortable cups. Turn the top design from classic laces into straps for a sleek and easy slip-on style.', 'Men/Women', '35.5-44', '3200.00', '2020-12-06', null, 'B001' );

insert  into `products`  values 
('P00007', 'OZWEEGO ZIP', 'AD00007', 'Yesterday from the 90s, cutting edge technology And perspectives of the future These adidas OZWEEGO shoes are ready to transform your look with bold style from the past and soft cushioning that will keep you moving forward. Into the future that belongs to you Zippered upper lets you put your shoes on and go quickly.', 'Men/Women', '35.5-44', '4700.00', '2020-10-05', null, 'B001' );

insert  into `products`  values 
('P00008', 'Jordan delta2', 'NK00001', 'The Jordan Delta 2 delivers fearless, fresh style that builds on the elements. You want durability, comfort and a Jordan-like attitude to the core - we have revamped the design lines and replaced some of the components.', 'Women', '35.5-40', '5000.00', '2020-02-01', null, 'B002' );

insert  into `products`  values 
('P00009', 'Nike Air Force 1 Shadow', 'NK00002', 'The Nike Air Force 1 Shadow brings a playful twist to a classic basketball shoe. Stand out by layering layers. It features a double-stacked brand and an enlarged midsole to emphasize a style approach and double the fun.', 'Women', '35.5-40', '4200.00', '2020-05-13', null, 'B002' );

insert  into `products`  values 
('P00010', 'Nike Air Force 1 LV8', 'NK00003', 'Nike Air Force 1 has a new twist. Classic basketball shoes from 1982 reimagined for the game. (In a better way) with a pixelated Swoosh and an iridescent pearlescent. With all the details you know and love Who wants to play?', 'Men', '39-44', '2900.00', '2020-04-29', null, 'B002' );

insert  into `products`  values 
('P00011', 'Nike Air Force 1 07', 'NK00004', 'Joy lives in the Nike Air Force 1 07, an iconic basketball shoe that brings a fresh twist to what you know best. Be it the sharp leather, the eye-catching colors and the perfect sparkle that makes you shine.', 'Women', '35.5-40', '3500.00', '2020-07-02', null, 'B002' );

insert  into `products`  values 
('P00012', 'Nike OverBreak SP', 'NK00005', 'The Nike OverBreak SP fuses iconic BRS track-shoe aesthetics with this sleek Nike OverReact accent, giving everyone an eye-popping style and superior comfort. There is an overlay from synthetic suede that is characterized by gradation dyeing for an added elegance While colorful laces and translucent toe caps are ready to show off.', 'Men', '39-44', '5200.00', '2020-11-11', null, 'B002' );

insert  into `products`  values 
('P00013', 'Nike Blazer Mid 77 Vintage', 'NK00006', 'In the 70s, Nike is shoes were the new shoes that just launched. Our brand at the time was still trying to pioneer the basketball scene. And still have to let the basketball team in the city try the shoes to test the prototype. Of course, the design is constantly evolving Over the years But the model name remains the same, the Nike Blazer Mid 77 Vintage has always been a classic. From the first day until today.', 'Men', '41-47', '3600.00', '2021-02-28', null, 'B002' );

insert  into `products`  values 
('P00014', 'Nike Dunk Low WMNS “Easter”', 'NK00007', 'This Nike Dunk Low features a White leather base with pastel hues covering the overlays, Swooshes, tongue labels, heels, and inner lining. A White midsole atop a Yellow speckled rubber sole completes the design.', 'Women', '35.5-40', '3500.00', '2021-11-13', null, 'B002' );

insert  into `products`  values 
('P00015', 'Nike Air Max 90', 'NK00008', 'The Nike Air Max 90 follows the original OG running shoe with a signature waffle outsole. Stitched outer overlay And TPU details highlight the classic style color New shades add power to the look The Max Air cushioning system adds comfort to the journey.', 'Women', '35.5-40', '4600.00', '2020-05-12', null, 'B002' );

insert  into `products`  values 
('P00016', 'Nike Air Flight 89', 'NK00009', 'Keep the fun alive with the Nike Air Flight 89, the iconic basketball shoe that takes you back to OG basketball style with retro colors. The top cover from the leather is sharp. And the straps over the longer feet The pair pays homage to Nike is all-star all-star Roswell Rayguns, featuring retro Raygun colors and embroidered accents. And details according to other trends That will bring you back to the year 1975.', 'Men', '41-47', '4600.00', '2020-04-19', null, 'B002' );

insert  into `products`  values 
('P00017', 'Mens Made in US 993', 'NB00001', 'Superior comfort meets classic style in our men Made in US 993 running shoe. A favorite from the legendary 990 series, the 993 features responsive cushioning and premium materials ready for a run or all-day wear.', 'Men', '40-46', '5800.00', '2020-09-12', null, 'B003' );

insert  into `products`  values 
('P00018', 'Fresh Foam Roav', 'NB00002', 'The Fresh Foam Roav keeps you comfortable on the go. Fresh Foam cushioning creates a soft underfoot feel, while the Ultra Heel provides a snug, locked-in fit.', 'Men', '40-47', '2600.00', '2020-09-17', null, 'B003' );

insert  into `products`  values 
('P00019', '574', 'NB00003', 'The 574 women’s sneaker is a collectible icon. With clean lines, a classic profile, and fun color schemes inspired by classic windbreakers, this shoe makes a standout, everyday statement that remains true to its 80s heritage. Modern comfort upgrades such as supportive ENCAP midsole cushioning and lightweight textile uppers help ensure these kicks feel as good as they look.', 'Women', '35.5-40', '2900.00', '2021-02-14', null, 'B003' );

insert  into `products`  values 
('P00020', 'Numeric 440 High', 'NB00004', 'Our New Balance Numeric NM440 is now available in a supportive high top with the NM440 High, blending premier technology with soft cushioning to create a go-to shoe for both everyday skate and wear. Featuring a 70s-inspired suede and mesh upper, this modern-retro shoe boasts both breathability and durability. A C-CAP heel wedge in the midsole helps protect against impact, while NDurance rubber outsole technology provides protection in high-wear areas to help get more out of these trusted shoes.', 'Women', '35.5-40', '3200.00', '2021-02-02', null, 'B003' );

insert  into `products`  values 
('P00021', 'Sola Sleek', 'NB00005', 'Subtle and stylish, the women is Sola Sleek shoe highlights your femininity by accentuating your stance. The almond-shaped toe is unique in its design, while the open collar provides exceptional support without sacrificing style points. With a lightweight EVA foam cushioning and an NB Comfort Insert for added support, these women is shoes are comfortable enough for all-day wear.', 'Women', '35.5-40', '2300.00', '2021-01-03', null, 'B003' );

insert  into `products`  values 
('P00022', 'FuelCell Trainer', 'NB00006', 'Subtle and stylish, the women Sola Sleek shoe highlights your femininity by accentuating your stance. The almond-shaped toe is unique in its design, while the open collar provides exceptional support without sacrificing style points. With a lightweight EVA foam cushioning and an NB Comfort Insert for added support, these women shoes are comfortable enough for all-day wear.', 'Women', '35.5-40', '4200.00', '2021-04-18', null, 'B003' );

insert  into `products`  values 
('P00023', 'TWO WXY', 'NB00007', 'For the players unbound by position, no longer defined by 1 through 5, the TWO WXY is built for your style of play. Hyper-engineered for speed and agility at both ends of the court, it’s a performance shoe packed with tech for that explosive moment when you switch from offense to defense to offense again. The TWO WXY specializes in versatility—the playmaker of today’s positionless game.', 'Men', '40-46', '5800.00', '2021-04-13', null, 'B003' );



/*Data for the table ColorOfProduct*/
insert into `colorofproduct` values
('P00001', 'C002', 'CP0001');

insert into `colorofproduct` values
('P00001', 'C004', 'CP0002');

insert into `colorofproduct` values
('P00002', 'C001', 'CP0003');

insert into `colorofproduct` values
('P00002', 'C002', 'CP0004');

insert into `colorofproduct` values
('P00003', 'C001', 'CP0005');

insert into `colorofproduct` values
('P00003', 'C006', 'CP0006');

insert into `colorofproduct` values
('P00003', 'C009', 'CP0007');

insert into `colorofproduct` values
('P00004', 'C008', 'CP0008');

insert into `colorofproduct` values
('P00004', 'C001', 'CP0009');

insert into `colorofproduct` values
('P00004', 'C002', 'CP0010');

insert into `colorofproduct` values
('P00005', 'C001', 'CP0011');

insert into `colorofproduct` values
('P00005', 'C002', 'CP0012');

insert into `colorofproduct` values
('P00006', 'C001', 'CP0013');

insert into `colorofproduct` values
('P00006', 'C002','CP0014');

insert into `colorofproduct` values
('P00007', 'C001', 'CP0015');

insert into `colorofproduct` values
('P00007', 'C003', 'CP0016');

insert into `colorofproduct` values
('P00008', 'C002', 'CP0017');

insert into `colorofproduct` values
('P00009', 'C002', 'CP0018');

insert into `colorofproduct` values
('P00009', 'C009', 'CP0019');

insert into `colorofproduct` values
('P00010', 'C002', 'CP0020');

insert into `colorofproduct` values
('P00010', 'C001', 'CP0021');

insert into `colorofproduct` values
('P00011', 'C002', 'CP0022');

insert into `colorofproduct` values
('P00011', 'C001', 'CP0023');

insert into `colorofproduct` values
('P00012', 'C003', 'CP0024');

insert into `colorofproduct` values
('P00013', 'C001', 'CP0025');

insert into `colorofproduct` values
('P00013', 'C004', 'CP0026');

insert into `colorofproduct` values
('P00014', 'C002', 'CP0027');

insert into `colorofproduct` values
('P00015', 'C001', 'CP0028');

insert into `colorofproduct` values
('P00015', 'C002', 'CP0029');

insert into `colorofproduct` values
('P00015', 'C003', 'CP0030');

insert into `colorofproduct` values
('P00016', 'C001', 'CP0031');

insert into `colorofproduct` values
('P00017', 'C001', 'CP0032');

insert into `colorofproduct` values
('P00017', 'C004', 'CP0033');

insert into `colorofproduct` values
('P00017', 'C005', 'CP0034');

insert into `colorofproduct` values
('P00017', 'C003', 'CP0035');

insert into `colorofproduct` values
('P00018', 'C001', 'CP0036');

insert into `colorofproduct` values
('P00018', 'C002', 'CP0037');

insert into `colorofproduct` values
('P00018', 'C005', 'CP0038');

insert into `colorofproduct` values
('P00018', 'C006', 'CP0039');

insert into `colorofproduct` values
('P00019', 'C001', 'CP0040');

insert into `colorofproduct` values
('P00019', 'C005', 'CP0041');

insert into `colorofproduct` values
('P00019', 'C007', 'CP0042');

insert into `colorofproduct` values
('P00019', 'C008', 'CP0043');

insert into `colorofproduct` values
('P00020', 'C001', 'CP0044');

insert into `colorofproduct` values
('P00020', 'C002', 'CP0045');

insert into `colorofproduct` values
('P00021', 'C001', 'CP0046');

insert into `colorofproduct` values
('P00021', 'C002', 'CP0047');

insert into `colorofproduct` values
('P00021', 'C008', 'CP0048');

insert into `colorofproduct` values
('P00022', 'C001', 'CP0049');

insert into `colorofproduct` values
('P00022', 'C002', 'CP0050');

insert into `colorofproduct` values
('P00022', 'C007', 'CP0051');

insert into `colorofproduct` values
('P00023', 'C005', 'CP0052');

insert into `colorofproduct` values
('P00023', 'C008', 'CP0053');

COMMIT;









