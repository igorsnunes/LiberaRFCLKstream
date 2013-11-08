TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = RFCLKstream
# RFCLKstream.dbd will be created and installed
DBD += RFCLKstream.dbd

# RFCLKstream.dbd will be made up from these files:
RFCLKstream_DBD += base.dbd

# Include dbd files from all support applications:
#RFCLKstream_DBD += xxx.dbd
RFCLKstream_DBD += ip-serial.dbd

# Add all the support libraries needed by this IOC
#RFCLKstream_LIBS += xxx

# RFCLKstream_registerRecordDeviceDriver.cpp derives from pucstream.dbd
RFCLKstream_SRCS += RFCLKstream_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
RFCLKstream_SRCS_DEFAULT += RFCLKstreamMain.cpp
RFCLKstream_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#RFCLKstream_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
RFCLKstream_LIBS += $(EPICS_BASE_IOC_LIBS)

PROD_LIBS += stream
PROD_LIBS += asyn

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

