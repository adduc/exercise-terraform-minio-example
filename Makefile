run:
	docker compose run --rm --entrypoint sh terragrunt -c "terraform init && terraform apply --auto-approve"

reset:
	docker compose kill
	docker compose rm -f
	sudo rm -rf data
