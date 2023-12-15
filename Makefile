build:
	docker build --pull --force-rm -t meilisearch:latest .

run:
	@mkdir -p data.ms
	@docker run -it --rm \
		-p 7700:770		-v $(current_dir)/data.ms:/data.ms \
		-e MEILI_MASTER_KEY=potato \
		getmeili/meilisearch:v1.5

