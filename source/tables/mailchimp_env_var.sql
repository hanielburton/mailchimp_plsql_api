create table mailchimp_env_var (
id             NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
variable_name  VARCHAR2(100),
variable_value VARCHAR2(100)
);