###----------------------------------------------------------------------
### Copyright (c) 2007-2010 Gemini Mobile Technologies, Inc.  All rights reserved.
###
### Licensed under the Apache License, Version 2.0 (the "License");
### you may not use this file except in compliance with the License.
### You may obtain a copy of the License at
###
###     http://www.apache.org/licenses/LICENSE-2.0
###
### Unless required by applicable law or agreed to in writing, software
### distributed under the License is distributed on an "AS IS" BASIS,
### WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
### See the License for the specific language governing permissions and
### limitations under the License.
###
### File    : Makefile
### Purpose : 
###----------------------------------------------------------------------

MODULES = \
	ubf_bertrpc_plugin

PLUGINS = \
	ubf_bertrpc_plugin

EUNITTESTS = \
	bertrpc_plugin_app \
	bertrpc_plugin_sup \
	bertrpc_plugin_test

# include erl make
include $(shell cat ../.depends-gmt-bom)/make/erl_make.mk

# standard targets
check: all
	-rm -f ./*.log
	$(RUNERL1) -noinput -noshell -pz $(EUNITTEST_DIR) \
		-s bertrpc_plugin_test do_eunit \
		-s erlang halt \
		> ./check.log
