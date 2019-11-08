# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

#-------------------------------------------------------------#
# Makefile for Timer framework
#-------------------------------------------------------------#

#-------------------------------------------------------------#
# Obj macros
#-------------------------------------------------------------#
tmrOBJS= \
        $(OUT_DIR)/tmr.$(OBJ)

FUCM_INC= \
    $(IN_DIR)/tmr.h    $(IN_DIR)/tmr_if.x  $(IN_DIR)/tmr.x
ALL_INC=$(FUCM_INC) $(CM_INC)

#-------------------------------------------------------------#
#-------------------------------------------------------------#
#Compiler macros
#-------------------------------------------------------------#
$(OUT_DIR)/tmr.$(OBJ): $(IN_DIR)/tmr.c $(ALL_INC)
	$(CC) -c -o$(OUT_DIR)/tmr.o $(COPTS) $(IOPTS) $(POPTS) \
	$(IN_DIR)/tmr.c

#-------------------------------------------------------------#
# Compile rule
#-------------------------------------------------------------#
$(OUT_DIR)/timer:$(tmrOBJS)
	$(AR) rcs $(LIB_DIR)/libtmr.a 	$(OUT_DIR)/tmr.$(OBJ)   \

#-------------------------------------------------------------#
# Clean macros
#-------------------------------------------------------------#
clean:
	\rm -f $(tmrOBJS)
