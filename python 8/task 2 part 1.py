email = " USER@DOMAIN.COM "
email = email.lower()
split_email = email.split("@")
print(f"Username: {split_email[0]} Domain: {split_email[1]}")