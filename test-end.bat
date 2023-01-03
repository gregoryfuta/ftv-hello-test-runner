set SL_LAB_ID=integ_otel_d67e_hellootelapp
rem set SL_LAB_ID=integ_ftv_d580_helloftvapp
rem set SL_LAB_ID=integ_classic_fe4a_helloclassicapp
set LOGGING=-Dsl.log.toConsole=true -Dsl.log.level=debug
set HTTP_DEBUG=-Dsl.httpDebugLog=yes
set COVERAGE_MANAGER=-Dsl.featuresData.codeCoverageManagerVersion=v2
set OTEL=-Dsl.otel.enabled=true -Dsl.otel.loadEmbeddedAgent=true -Dotel.javaagent.debug=true -Dotel.propagators=tracecontext,baggage,xray

java %LOGGING% %HTTP_DEBUG% %COVERAGE_MANAGER% %OTEL% -jar sl-test-listener.jar end -tokenfile dev-integ-ftv2.token.txt -labid %SL_LAB_ID%