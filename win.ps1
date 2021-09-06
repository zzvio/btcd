$Env:CGO_CFLAGS="-I${PWD}"
go build -o gobtc.dll -buildmode=c-shared
cp gobtc.dll C:\Users\icte-pa-03\.java\packages\lib