
### �U���Ҧ����]�A�]�A�w�g�w�˹L���]�A�æw��
pkgNames<- available.packages()[,1]
install.packages(pkgNames)


### �U�����w�˹L���]���e�m�@�~
havePkgs<-installed.packages()[,1]
names(havePkgs)<-NULL
downPkgs<-pkgnames[!is.element(pkgNames,havePkgs)]

#### �����U���æw��
install.packages(downPkgs)

#### �u�U�����Y�ɡA���i��w�ˡAWindows����
download.packages(downPkgs,"D:/forWinSetupAllPackagesZip")

#### �u�U�����Y�ɡA���i��w�ˡALinux����
download.packages(downPkgs,"D:/forLinuxSetupAllPackagesTarGz")

