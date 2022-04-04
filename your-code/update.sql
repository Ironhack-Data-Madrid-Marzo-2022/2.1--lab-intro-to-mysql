update Salespersons
set store = "Miami"
where `staff ID` = 5;

select *
from Salespersons;

SET SQL_SAFE_UPDATES = 0;
update Customers
set email = "ppicasso@gmail.com"
where name = "Pablo Picasso";


update Customers
set email = "lamarr_hd@hollywood.com"
where name = "Hedy Lamarr";

update Customers
set email = "hello@nasa.gov"
where name = "Katherine Johnson";

select *
from Customers;