create user hr_user with password 'password';

create role select_data;
grant select on employees to select_data;

grant select_data to hr_user;