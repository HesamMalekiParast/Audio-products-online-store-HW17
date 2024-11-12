CREATE TABLE "artists" (  
    "artist_id" SERIAL NOT NULL PRIMARY KEY,  
    "name" VARCHAR(20) NOT NULL
);  

CREATE TABLE "customers" (  
    "customer_id" SERIAL NOT NULL PRIMARY KEY,  
    "customer_name" VARCHAR(20) NOT NULL,  
    "email" VARCHAR(50) NOT NULL UNIQUE,
	"phone_number" INT NOT NULL UNIQUE
);  

CREATE TABLE "albums" (  
    "album_id" SERIAL NOT NULL PRIMARY KEY,  
    "title" VARCHAR(50) NOT NULL UNIQUE,  
    "release_date" DATE NOT NULL,  
    "artist_id" INTEGER NOT NULL,  
    FOREIGN KEY ("artist_id") REFERENCES "artists"("artist_id")  
);  

CREATE TABLE "tracks" (  
    "track_id" SERIAL NOT NULL PRIMARY KEY,  
    "album_id" INTEGER NOT NULL,  
    "artist_id" INTEGER NOT NULL,  
    "title" VARCHAR(20) NOT NULL,  
    "duration" INTEGER NOT NULL,  
    "file_type" VARCHAR(10) NOT NULL,  
    "genre" VARCHAR(20) NOT NULL,  
    "file_size" VARCHAR(10) NOT NULL,  
    "price" INTEGER NOT NULL,  
    FOREIGN KEY ("album_id") REFERENCES "albums"("album_id"),  
    FOREIGN KEY ("artist_id") REFERENCES "artists"("artist_id")  
);  

CREATE TABLE "sales" (  
    "saleS_id" SERIAL NOT NULL PRIMARY KEY,  
    "customer_id" INTEGER NOT NULL,  
    "quantity" INTEGER NOT NULL,  
    "sale_date" DATE NOT NULL,  
    "price_at_sale" INTEGER NOT NULL,    
    FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id")  
);
