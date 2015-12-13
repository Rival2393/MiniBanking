
create table accounts
(
  account_id number(3) not null,
  card_number number(16) not null,
  balance number,
  CONSTRAINT account_pk PRIMARY KEY (account_id)
);

create table clients
(
  user_id number(3) not null,
  user_name varchar(20) not null,
  user_pass number not null,
  account_id number not null,
  CONSTRAINT user_pk PRIMARY KEY (user_id),
  CONSTRAINT account_fk FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);