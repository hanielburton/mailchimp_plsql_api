create table mailchimp_env_var (
id             NUMBER,
variable_name  VARCHAR2(100),
variable_value VARCHAR2(100)
);

alter table mailchimp_env_var ADD (
    constraint mailchimp_env_var_pk PRIMARY KEY (ID));

create sequence mailchimp_env_var_seq;
    
create or replace trigger mailchimp_ev_var_trig
before insert on mailchimp_env_var
for each row
when (new.id is null)
begin
    :new.id := mailchimp_env_var_seq.NEXTVAL;
end;
