
# docker-cosy-pgwish-gui

basis für die GUIS

	baut auf docker-cosy-pgish auf
	benutzt addr-server
	benutzt cosy-setup

	docker build -t docker-cosy-pgwish-gui ./
	docker run -p 8022:22 --name qbl -d docker-cosy-pgwish-gui
