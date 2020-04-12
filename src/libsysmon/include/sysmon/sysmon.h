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


#ifndef _SYSMON_H_
#define _SYSMON_H_

#import <Foundation/Foundation.h>
#import <xpc/xpc.h>

typedef void* sysmon_request_t;
typedef void* sysmon_row_t;
typedef void* sysmon_table_t;

extern int SYSMON_ATTR_PROC_ARGUMENTS;
extern int SYSMON_ATTR_PROC_COMM;
extern int SYSMON_ATTR_PROC_FLAGS;
extern int SYSMON_ATTR_PROC_PID;
extern int SYSMON_ATTR_PROC_PGID;
extern int SYSMON_ATTR_PROC_PPID;
extern int SYSMON_ATTR_PROC_RGID;
extern int SYSMON_ATTR_PROC_RUID;
extern int SYSMON_ATTR_PROC_START;
extern int SYSMON_ATTR_PROC_TDEV;
extern int SYSMON_ATTR_PROC_UID;
extern int SYSMON_REQUEST_TYPE_PROCESS;

sysmon_table_t sysmon_copy_process_info(void);
void* sysmon_release(sysmon_request_t unknown1);
void* sysmon_request_add_attribute(sysmon_request_t unknown1, int unknown2);
void* sysmon_request_add_attributes(void);
void* sysmon_request_alloc(void);
void* sysmon_request_cancel(void);
sysmon_table_t sysmon_request_create(int unknown1, void (^unknown2)(sysmon_table_t table));
void* sysmon_request_execute(sysmon_request_t unknown1);
void* sysmon_request_set_flags(void);
void* sysmon_request_set_interval(void);
void* sysmon_retain(sysmon_table_t unknown1);
void* sysmon_row_alloc(void);
void* sysmon_row_apply(void);
xpc_object_t sysmon_row_get_value(sysmon_row_t unknown1, int unknown2);
void* sysmon_table_alloc(void);
void* sysmon_table_apply(void);
void* sysmon_table_copy_row(void);
int sysmon_table_get_count(sysmon_table_t unknown1);
sysmon_row_t sysmon_table_get_row(sysmon_table_t unknown1, int unknown2);
void* sysmon_table_get_timestamp(void);

#import <sysmon/OS_sysmon_object.h>
#import <sysmon/OS_sysmon_request.h>
#import <sysmon/OS_sysmon_table.h>
#import <sysmon/OS_sysmon_row.h>

#endif
