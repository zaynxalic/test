



clone:
	mkdir -p git-repo/;
	cd git-repo;
	git init;
	git remote remove origin;
	git remote add -f origin git@github.com:zaynxalic/Unet-DRIVE.git;
	git config core.sparsecheckout true;
	git config pull.rebase true;
	echo "./mosstest.zip" >> .git/info/sparse-checkout;
	git pull --depth=1 origin main;
	# rm -rf git-repo/;