#FentMarad
for (;;) {
    ngrok.exe
    ngrok authtoken 1uIA46A96bOgzS99qHst2o2rIiN_6De6LpbEMrMgfRrw4Z4hk
    ngrok tcp 3389
    Start-Sleep -s 5#20400

    ngrok.exe
    ngrok authtoken 1wXBcwGWtaeQMZ1ulQHrK2VPZeV_5XhuRVf3jWjt17ghdMic3
    ngrok tcp 3389
    Start-Sleep -s 5#20400
}
