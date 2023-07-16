create sequence supplier_sequence start with 100 increment by 1;
create table t_supplier (id bigint not null, address varchar(255), email varchar(255), name varchar(255), phone varchar(255), primary key (id));
