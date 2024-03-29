cp $1 .config.old
sed \
-e '/CONFIG_X86_IO_APIC=/ s/.$/y/               '             \
-e '/CONFIG_ACPI=/ s/.$/y/                      '             \
-e '/CONFIG_ACPI_PROCFS=/ s/.$/y/               '             \
-e '/CONFIG_XEN_DOM0=/ s/.$/y/                  ' 	      \
-e '/CONFIG_PCI_XEN=/ s/.$/y/                   '             \
-e '/CONFIG_XEN_DEV_EVTCHN=/ s/.$/y/            '             \
-e '/CONFIG_XENFS=/ s/.$/y/                     '             \
-e '/CONFIG_XEN_COMPAT_XENFS=/ s/.$/y/          ' 	      \
-e '/CONFIG_XEN_SYS_HYPERVISOR=/ s/.$/y/        ' 	      \
-e '/CONFIG_XEN_GNTDEV=/ s/.$/y/                ' 	      \
-e '/CONFIG_XEN_BACKEND=/ s/.$/y/               ' 	      \
-e '/CONFIG_XEN_NETDEV_BACKEND=/ s/.$/m/        ' 	      \
-e '/CONFIG_XEN_BLKDEV_BACKEND=/ s/.$/m/        ' 	      \
-e '/CONFIG_XEN_PCIDEV_BACKEND=/ s/.$/y/        ' 	      \
-e '/CONFIG_XEN_PRIVILEGED_GUEST=/ s/.$/y/      ' 	      \
-e '/CONFIG_XEN_BALLOON=/ s/.$/y/               ' 	      \
-e '/CONFIG_XEN_SCRUB_PAGES=/ s/.$/y/           ' 	      \
-e '/CONFIG_XEN_DEV_EVTCHN=/ s/.$/y/	   	' 	      \
-e '/CONFIG_XEN_GNTDEV=/ s/.$/y/	   	' 	      \
-e '/CONFIG_PARAVIRT=/ s/.$/y/		   	' 	      \
-e '/CONFIG_XEN=/ s/.$/y/		   	' 	      \
-e '/CONFIG_PARAVIRT_GUEST=/ s/.$/y/	   	' 	      \
-e '/CONFIG_PARAVIRT_SPINLOCKS=/ s/.$/y/   	' 	      \
-e '/CONFIG_HVC_DRIVER=/ s/.$/y/	   	' 	      \
-e '/CONFIG_HVC_XEN=/ s/.$/y/		   	' 	      \
-e '/CONFIG_XEN_FBDEV_FRONTEND=/ s/.$/y/   	' 	      \
-e '/CONFIG_XEN_BLKDEV_FRONTEND=/ s/.$/y/  	' 	      \
-e '/CONFIG_XEN_NETDEV_FRONTEND=/ s/.$/y/  	' 	      \
-e '/CONFIG_XEN_PCIDEV_FRONTEND=/ s/.$/y/  	' 	      \
-e '/CONFIG_INPUT_XEN_KBDDEV_FRONTEND=/ s/.$/y/	' 	      \
-e '/CONFIG_XEN_FBDEV_FRONTEND=/ s/.$/y/   	' 	      \
-e '/CONFIG_XEN_XENBUS_FRONTEND=/ s/.$/y/  	' 	      \
-e '/CONFIG_XEN_SAVE_RESTORE=/ s/.$/y/	   	' 	      \
-e '/CONFIG_XEN_GRANT_DEV_ALLOC=/ s/.$/m/  	' 	      \
-e '/CONFIG_XEN_TMEM=/ s/.$/y/		   	' 	      \
-e '/CONFIG_CLEANCACHE=/ s/.$/y/	   	' 	      \
-e '/CONFIG_FRONTSWAP=/ s/.$/y/		   	' 	      \
-e '/CONFIG_XEN_SELFBALLOONING=/ s/.$/y/   	' 	      \
.config.old | tee .config