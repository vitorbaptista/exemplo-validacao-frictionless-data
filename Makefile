.PHONY = validate


validate:
	frictionless validate datasets/**/datapackage.json --skip-errors blank-row
