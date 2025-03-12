build:
	docker pull composer/satis
	docker run --rm --init \
	  --user $(shell id -u):$(shell id -g) \
	  --volume $(shell pwd):/build \
	  --volume "$(HOME)/.composer:/composer" \
	  composer/satis build ./satis.json ./public

deploy: build
	@if [ -z "$$(git branch --list gh-pages)" ]; then \
		git checkout --orphan gh-pages; \
		git rm -rf .; \
	else \
		git checkout gh-pages; \
	fi
	cp -r public/* .
	rm -rf public
	git add .
	git commit -m "Deploy Satis repository"
	git push origin gh-pages
	git checkout main

clean:
	rm -rf public

