set SL_LAB_ID=integ_otel_d67e_hellootelapp
rem set SL_LAB_ID=integ_ftv_d580_helloftvapp
rem set SL_LAB_ID=integ_classic_fe4a_helloclassicapp
set LOGGING=-Dsl.log.toConsole=true -Dsl.log.level=debug
set HTTP_DEBUG=-Dsl.httpDebugLog=yes

java %LOGGING% %HTTP_DEBUG% -jar sl-test-listener.jar start -tokenfile dev-integ-ftv2.token.txt -labid %SL_LAB_ID% -testStage "Runner Stage"

