

builddocker:
ifndef DOCKER_USER
	$(error "Error: DOCKER_USER is not set. Exiting.")
endif
	docker build -t ${DOCKER_USER}/rs_greedy_coin_microservice .

rundocker:
ifndef DOCKER_USER
	$(error "Error: DOCKER_USER is not set.")
endif
	docker run -dp 3000:3000 ${DOCKER_USER}/rs_greedy_coin_microservice

format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet

run:
	cargo run

all: format lint test run