#!/usr/bin/python3

import cec

def LogCallback(level, time, message):
    if level == cec.CEC_LOG_ERROR:
        levelstr = "ERROR:   "
    elif level == cec.CEC_LOG_WARNING:
        levelstr = "WARNING: "
    elif level == cec.CEC_LOG_NOTICE:
        levelstr = "NOTICE:  "
    elif level == cec.CEC_LOG_TRAFFIC:
        levelstr = "TRAFFIC: "
    elif level == cec.CEC_LOG_DEBUG:
        levelstr = "DEBUG:   "
                                                  
    print(levelstr + "[" + str(time) + "]     " + message)
    return 0

def keyPressCallback(key, duration):
    print("[key pressed] " + str(key))
    return 0

# Configuration de notre instance libcec
cecconfig = cec.libcec_configuration()
cecconfig.strDeviceName = "libCEC"
cecconfig.bActivateSource = 0
cecconfig.deviceTypes.Add(cec.CEC_DEVICE_TYPE_RECORDING_DEVICE)
cecconfig.clientVersion = cec.LIBCEC_VERSION_CURRENT
# cecconfig.SetLogCallback(LogCallback)
cecconfig.SetKeyPressCallback(keyPressCallback)

# Lancement et ouverture de notre périphérique
lib = cec.ICECAdapter.Create(cecconfig)
adapter = lib.DetectAdapters()[0].strComName
lib.Open(adapter)

while True:
    command = input("...").lower()
    if command == 'q':
        break