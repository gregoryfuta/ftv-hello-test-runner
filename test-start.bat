rem set SL_LAB_ID=integ_ftv_d580_helloftvapp
set SL_LAB_ID=integ_classic_fe4a_helloclassicapp
set LOGGING=-Dsl.log.toConsole=true -Dsl.log.level=info

java %LOGGING% -jar sl-test-listener.jar start -tokenfile dev-integ-ftv2.token.txt -labid %SL_LAB_ID% -testStage "Runner Classic Tests"

