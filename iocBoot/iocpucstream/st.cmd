#!../../bin/linux-x86_64/pucstream

## You may have to change pucstream to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/RFCLKstream.dbd",0,0)
RFCLKstream_registerRecordDeviceDriver(pdbbase) 

epicsEnvSet("STREAM_PROTOCOL_PATH", ".:../protocol")

## Load record instances
dbLoadRecords("../../db/RFCLK.db")

drvAsynSerialPortConfigure("NC", "/dev/ttyACM0")
#drvAsynIPPortConfigure("NC", "127.0.0.1:6791")

asynSetOption("NC", -1, "baud", "9600")
asynSetOption("NC", -1, "bits", "8")
asynSetOption("NC", -1, "parity", "none")
asynSetOption("NC", -1, "stop", "1")

asynSetTraceMask("NC",-1,0x04) 
asynSetTraceIOMask("NC",-1,0x04) 

iocInit()

## Start any sequence programs
#seq sncpucstream,"user=dig"
