
node/bitcoin/: 
	git clone https://github.com/bitcoin/bitcoin.git node/bitcoin/
	docker-compose build
	docker-compose up

clean:
	docker-compose down -v --rmi all --remove-orphans

.PHONY: clean
