



clone:
	rm -rf temp/;
	mkdir -p temp/;
	git init temp/;
	mv temp/.git temp/.subgit
	git --git-dir=temp/.subgit remote add -f origin git@github.com:zaynxalic/Unet-DRIVE.git;
	git --git-dir=temp/.subgit config core.sparsecheckout true;
	echo "./mosstest.zip" >> temp/.subgit/info/sparse-checkout;
	git --git-dir=temp/.subgit pull origin main;
	# rm -rf temp/;