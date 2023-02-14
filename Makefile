



clone:
	rm -rf temp/;
	mkdir -p temp/;
	git init temp/;
	mv temp/.git temp/.subgit
	git --git-dir=temp/.subgit remote add -f origin git@github.com:zaynxalic/Unet-DRIVE.git;
	git --git-dir=temp/.subgit config core.sparseCheckout true
	git --git-dir=temp/.subgit sparse-checkout init;
	git --git-dir=temp/.subgit sparse-checkout set "mosstest.zip";
	git --git-dir=temp/.subgit pull origin main;
	# rm -rf temp/;