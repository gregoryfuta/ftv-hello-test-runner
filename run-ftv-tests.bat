set SL_TOKEN=eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL0RFVi1pbnRlZy1mdHYyLmF1dGguc2VhbGlnaHRzLmlvLyIsImp3dGlkIjoiREVWLWludGVnLWZ0djIsaS0wMmQ3YjRhNzczMDAxMDk5NixBUElHVy0yMjZjYjZlOS0xNzdmLTRmZDEtYmE1OC00ZTgyNGFiYzdkZWYsMTY3MDk2MzIyNjI5MyIsInN1YmplY3QiOiJTZWFMaWdodHNAYWdlbnQiLCJhdWRpZW5jZSI6WyJhZ2VudHMiXSwieC1zbC1yb2xlIjoiYWdlbnQiLCJ4LXNsLXNlcnZlciI6Imh0dHBzOi8vZGV2LWludGVnLWZ0djItZ3cuZGV2LnNlYWxpZ2h0cy5jby9hcGkiLCJzbF9pbXBlcl9zdWJqZWN0IjoiIiwiaWF0IjoxNjcwOTYzMjI2fQ.GhSaEzmMvXkkGfCF1wNAMVDeM5PA13CBTl3zb58c_128P6TkbjtS2BLntxNciz-3AIQdGNxphM2f75X2f7JmZ02bmNwJG4t9UgnU_dm2wqn32FgTsp6XSnVF_0Wa9Sb6ipB7XdsNcyhzE87kn14jz8vZXcPzCJAf1Tai0bFTpohy2PDeipWroXW_yhUkdPxgk3yqdiETU1zQUoXet41RpKbvBawWUV79kkRR6PqbAYwxpcXrEJbwIk-gf8jFjGnqvHB3TOIuiwtRztL8NiF4ID8Q7g86aWkVoIlNrOGr63vH9_vQ0hE9FAK5jrOvjKnVRjIFmp2wu3g038S02hKVQZcmUG0075LW6YBVpvnsDWnLtLtbH_WlheomKh6rAVcD9XnA4ksQEl9W27BiOH7QQUx6Cf7rw5C1bKP1Pb9HjAIg3FLRZLZU9-p0a-q8RVrmFUK8VRj4jTAhT5pRpXTL2KELP15t_RQGffjyxW3CsL-q5S-ZFB2Bp0hKmbbOOkcfvE3SusXzQJXG8jpj_K2wkJDE6hGRaPZcmjYfoke72dEPbG43cIFeWdxS5gJaO-oX9Q9htNnHgGX4eAOapk8r5iq7Jl-88CBwqvF59FLPCdMkDYawLfRDduFrxjonZf50XTbSVVqjgQUr5l9lppf-WBSjoBBSr_-i7-uaNrX05Fk

set PACKAGES=dev.futa.sealights*
set SL_LABID=integ_puppet_038a_gfftvlab02
set SL_APPNAME=gf-ftv-lab02
set APPLICATION_JAR=ftv-hello-app-0.0.1-SNAPSHOT.jar

rem rm -f ./target/$APPLICATION_JAR

rem cp build/libs/$APPLICATION_JAR ./target/

java -jar sl-build-scanner.jar -gradle -configfile slmaven.json -workspacepath .