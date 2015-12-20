#include "chdir.h"
#include "../base.h"
#include "../errno.h"
#include <asm/unistd.h>
#include <libdyld/VirtualPrefix.h>

long sys_chdir(const char* path)
{
	int ret;

	path = __prefix_translate_path(path);
	ret = LINUX_SYSCALL(__NR_chdir, path);
	if (ret < 0)
		ret = errno_linux_to_bsd(ret);
	else
		__prefix_cwd(path);

	return ret;
}

