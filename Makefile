



clone:
	rm -rf temp/;
	mkdir -p temp/;
	git init temp/;
	mv temp/.git temp/.subgit
	git --git-dir=temp/.subgit remote add -f origin git@github.com:zaynxalic/Unet-DRIVE.git;
	git --git-dir=temp/.subgit config core.sparseCheckout true
	# git --git-dir=temp/.subgit sparse-checkout init;
	echo "./DRIVE" >> temp/.subgit/info/sparse-checkout;
	# git --git-dir=temp/.subgit sparse-checkout set "./mosstest.zip";
	git --git-dir=temp/.subgit pull --depth=1 origin main;
	# rm -rf temp/;