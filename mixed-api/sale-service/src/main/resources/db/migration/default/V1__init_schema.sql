create sequence sale_sequence start with 1000 increment by 1;
create table t_sale (id bigint not null, product_id bigint, quantity integer not null, unit_price float(53) not null, primary key (id));
