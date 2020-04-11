.PHONY: build
XXX=8.8.2
build:
	curator update
	curator constraints --target=nightly-`date +%Y-%m-%d`
	curator snapshot-incomplete --target=nightly-`date +%Y-%m-%d`     #
	curator snapshot
	stack --resolver ghc-$(XXX) exec curator check-snapshot
