#!/bin/bash
echo "This updates the existing githubs"
echo "Fill the array with the original folders first"

# use ls -d */ > list to get the list of the created githubs and copy/paste in

directories=(
carli-calamares-config/
carli-calamares-qml-config/
carli-cinnamon-config/
carli-grub-poly-dark/
carli-grub-poly-light/
carli-mirrorlist/
carli-pkgbuild/
carli-sddm-viper-theme/
carli-system-installation/
carli-viper-grub-theme/
carli-xfce-config/
carli_repo/
)



count=0

for name in "${directories[@]}"; do
	count=$[count+1]
	tput setaf 1;echo "Github "$count;tput sgr0;
	# if there is no folder then make one
	git clone https://github.com/PrismNet/$name
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
done
