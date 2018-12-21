cd ~

perl -pi -e 's/vboxadd:x:997/vboxadd:x:1000/g' /etc/passwd

perl -pi -e 's/vboxsf:x:995/vboxsf:x:1000/g' /etc/group

git clone https://github.com/laradock/laradock.git Laradock

cd Laradock

#git checkout 22032974c95ddadde18ad90c2fdc346d4b632360

#git reset --hard HEAD

/bin/cp ~/github/docker_centos/package/Laradock/file/env ~/Laradock/.env 

perl -pi -e 's/APP_CODE_PATH_HOST=..\//APP_CODE_PATH_HOST=\/media\/sf_Share\/www\//g' .env #指到共用資料夾

perl -pi -e 's/RUN usermod -u 1000 www-data/RUN usermod -u 1000 www-data\nRUN groupmod -g 1000 www-data/g' php-fpm/Dockerfile

perl -pi -e 's/root \/var\/www\/public/root \/var\/www\/laravel\/public/g' nginx/sites/default.conf

cd ~/Laradock

/bin/cp ~/github/docker_centos/package/Laradock/file/docker-compose.yml ~/Laradock/docker-compose.yml

docker-compose up -d nginx mysql phpmyadmin redis workspace 

#shutdown -h now  


