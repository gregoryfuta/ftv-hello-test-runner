set LOGGING=-Dsl.log.toConsole=true -Dsl.log.level=info

java %LOGGING% -jar sl-build-scanner.jar -buildend  -ok -tokenfile dev-integ-ftv2.token.txt -buildsessionidfile buildSessionId.txt