
# dist/mvp-tailwind.css:
# 	npx tailwindcss build mvp.css --config tailwind.config.js --output dist/mvp-tailwind.css

.PHONY: build
build:
	@npx tailwindcss@1.3.1 build src/mvp-tailwind.css \
		--config src/tailwind.config.js \
		--output dist/mvp-tailwind.css

.PHONY: production
production:
	@NODE_ENV=production npx postcss \
		src/mvp-tailwind.css \
		--output dist/mvp-tailwind.min.css

.PHONY: all
all: build production
