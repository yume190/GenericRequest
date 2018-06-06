proj:
	@swift package generate-xcodeproj
debug:
	@swift build
release:
	@swift build -c release
run:
	@swift run
toolVersion:
	@swift package tools-version