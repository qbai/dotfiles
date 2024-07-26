#include <stddef.h> // NULL definition
#include "util.h"

// multiple error messages returned 
  	const char *err;
	err = "Not a bcache superblock (bad offset)";
	if (sb->offset != SB_SECTOR)
		goto err;

	err = "Not a bcache superblock (bad magic)";
	if (memcmp(sb->magic, bcache_magic, 16))
		goto err;
err:
	put_page(page);
	return err;


// multiply function return 
done:
	kfree(sb);
	kfree(path);
	module_put(THIS_MODULE);
async_done:
	return size;

out_put_sb_page:
	put_page(virt_to_page(sb_disk));
out_blkdev_put:
	blkdev_put(bdev, FMODE_READ | FMODE_WRITE | FMODE_EXCL);
out:
	pr_info("error %s: %s\n", path?path:"", err);
	return ret;


// 2 funcs running together 
if (bch_request_init() ||
             sysfs_create_files(bcache_kobj, files))
		goto err;

// var aliagned, a is 2 to the power
#define align(d, a)     (((d) + (a - 1)) & ~(a - 1))

// ptr aliagned 
#define align_ptr(p, a)                                                   \
    (u_char *) (((uintptr_t) (p) + ((uintptr_t) a - 1)) & ~((uintptr_t) a - 1))
