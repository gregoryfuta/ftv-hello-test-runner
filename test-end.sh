#!/bin/bash
SL_LAB_ID=integ_ftv_1c18_tomcathello
# SL_LAB_ID=integ_ftv_d580_helloftvapp
# SL_LAB_ID=integ_classic_fe4a_helloclassicapp
LOGGING='-Dsl.log.toConsole=true -Dsl.log.level=debug'
HTTP_DEBUG=-Dsl.httpDebugLog=yes
# COVERAGE_MANAGER=-Dsl.featuresData.codeCoverageManagerVersion=v2
# OTEL=-Dsl.otel.enabled=true -Dsl.otel.loadEmbeddedAgent=true -Dotel.javaagent.debug=true -Dotel.propagators=tracecontext,baggage,xray

java $LOGGING $HTTP_DEBUG $COVERAGE_MANAGER $OTEL -jar sl-test-listener.jar end -tokenfile dev-integ-ftv2.token.txt -labid $SL_LAB_ID