sudo -u postgres psql < /tmp/ocp-virt-app/db/user-demo.sql
sudo -u postgres echo "host    all             all              0.0.0.0/0           md5" >> /var/lib/pgsql/data/pg_hba.conf
sudo -u postgres echo "listen_addresses = '*'" >> /var/lib/pgsql/data/postgresql.conf
sudo systemctl restart postgresql