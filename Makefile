VERSION=$$(cat ThinBridgeX64.iss | grep AppVersion | cut -d = -f 2)

.PHONY: release

release:
	(git status | grep -E '(added|modified|deleted):') || (git tag --list | grep "v$(VERSION)") || (git tag -a "v$(VERSION)" -m "ThinBridge v$(VERSION)" && git push --tags)

