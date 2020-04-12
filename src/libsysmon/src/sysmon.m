/*
 This file is part of Darling.

 Copyright (C) 2019 Lubos Dolezel

 Darling is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 Darling is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with Darling.  If not, see <http://www.gnu.org/licenses/>.
*/


#include <sysmon/sysmon.h>
#include <stdlib.h>
#include <stdio.h>

static int verbose = 0;

int SYSMON_ATTR_PROC_ARGUMENTS = 0;
int SYSMON_ATTR_PROC_COMM = 0;
int SYSMON_ATTR_PROC_FLAGS = 0;
int SYSMON_ATTR_PROC_PID = 0;
int SYSMON_ATTR_PROC_PGID = 0;
int SYSMON_ATTR_PROC_PPID = 0;
int SYSMON_ATTR_PROC_RGID = 0;
int SYSMON_ATTR_PROC_RUID = 0;
int SYSMON_ATTR_PROC_START = 0;
int SYSMON_ATTR_PROC_TDEV = 0;
int SYSMON_ATTR_PROC_UID = 0;
int SYSMON_REQUEST_TYPE_PROCESS = 0;

__attribute__((constructor))
static void initme(void) {
    verbose = getenv("STUB_VERBOSE") != NULL;
}

sysmon_table_t sysmon_copy_process_info(void)
{
    if (verbose) puts("STUB: sysmon_copy_process_info called");
    return NULL;
}

void* sysmon_release(sysmon_request_t unknown1)
{
    if (verbose) puts("STUB: sysmon_release called");
    return NULL;
}

void* sysmon_request_add_attribute(sysmon_request_t unknown1, int unknown2)
{
    if (verbose) puts("STUB: sysmon_request_add_attribute called");
    return NULL;
}

void* sysmon_request_add_attributes(void)
{
    if (verbose) puts("STUB: sysmon_request_add_attributes called");
    return NULL;
}

void* sysmon_request_alloc(void)
{
    if (verbose) puts("STUB: sysmon_request_alloc called");
    return NULL;
}

void* sysmon_request_cancel(void)
{
    if (verbose) puts("STUB: sysmon_request_cancel called");
    return NULL;
}

sysmon_table_t sysmon_request_create(int unknown1, void (^unknown2)(sysmon_table_t table))
{
    if (verbose) puts("STUB: sysmon_request_create called");
    return NULL;
}

void* sysmon_request_execute(sysmon_request_t unknown1)
{
    if (verbose) puts("STUB: sysmon_request_execute called");
    return NULL;
}

void* sysmon_request_set_flags(void)
{
    if (verbose) puts("STUB: sysmon_request_set_flags called");
    return NULL;
}

void* sysmon_request_set_interval(void)
{
    if (verbose) puts("STUB: sysmon_request_set_interval called");
    return NULL;
}

void* sysmon_retain(sysmon_table_t unknown1)
{
    if (verbose) puts("STUB: sysmon_retain called");
    return NULL;
}

void* sysmon_row_alloc(void)
{
    if (verbose) puts("STUB: sysmon_row_alloc called");
    return NULL;
}

void* sysmon_row_apply(void)
{
    if (verbose) puts("STUB: sysmon_row_apply called");
    return NULL;
}

xpc_object_t sysmon_row_get_value(sysmon_row_t unknown1, int unknown2)
{
    if (verbose) puts("STUB: sysmon_row_get_value called");
    return NULL;
}

void* sysmon_table_alloc(void)
{
    if (verbose) puts("STUB: sysmon_table_alloc called");
    return NULL;
}

void* sysmon_table_apply(void)
{
    if (verbose) puts("STUB: sysmon_table_apply called");
    return NULL;
}

void* sysmon_table_copy_row(void)
{
    if (verbose) puts("STUB: sysmon_table_copy_row called");
    return NULL;
}

int sysmon_table_get_count(sysmon_table_t unknown1)
{
    if (verbose) puts("STUB: sysmon_table_get_count called");
    return 0;
}

sysmon_row_t sysmon_table_get_row(void* unknown1, int unknown2)
{
    if (verbose) puts("STUB: sysmon_table_get_row called");
    return NULL;
}

void* sysmon_table_get_timestamp(void)
{
    if (verbose) puts("STUB: sysmon_table_get_timestamp called");
    return NULL;
}
