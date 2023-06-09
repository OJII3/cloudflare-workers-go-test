.PHONY: dev
dev:
	wrangler dev

.PHONY: build
build:
	go run github.com/syumai/workers/cmd/workers-assets-gen@latest
	tinygo build -o ./build/app.wasm -target wasm ./...

.PHONY: publish
publish:
	wrangler publish
