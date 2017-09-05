cd containers
if [ -d wildcards-api ]; then
	cd wildcards-api
	git checkout develop
	git pull
	cd ..
else
	git clone -b develop https://github.com/kliptonize/wildcards-api.git
fi
if [ -d wildcards-cms ]; then
	cd wildcards-cms
	git checkout develop
	git pull
	cd ..
else
	git clone -b develop https://github.com/kliptonize/wildcards-cms.git
fi
cd ..
docker-compose up --build