--create user hr_user with password 'password';
--select_data
--create role all_data;
grant insert, update,select, update on employees to all_data;

grant all_data to hr_user;