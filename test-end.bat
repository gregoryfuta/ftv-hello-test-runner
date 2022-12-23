rem set SL_LAB_ID=integ_ftv_d580_helloftvapp
set SL_LAB_ID=integ_classic_fe4a_helloclassicapp

java -jar sl-test-listener.jar end -tokenfile dev-integ-ftv2.token.txt -labid %SL_LAB_ID%