all: ../local/bin/metwork_repos.py ../local/bin/_copy_integration_branch.sh ../local/bin/copy_integration_branch.sh ../local/bin/metwork_valid_merge_logic_status.py

../local/bin/metwork_repos.py:
	mkdir -p ../local/bin
	wget -O $@ "https://raw.githubusercontent.com/metwork-framework/resources/master/scripts/metwork_repos.py"
	chmod +x $@

../local/bin/_copy_integration_branch.sh: _copy_integration_branch.sh
	mkdir -p ../local/bin
	cp -f $< $@
	chmod +x $@

../local/bin/copy_integration_branch.sh: copy_integration_branch.sh
	mkdir -p ../local/bin
	cp -f $< $@
	chmod +x $@

../local/bin/metwork_valid_merge_logic_status.py:
	mkdir -p ../local/bin
	wget -O $@ "https://raw.githubusercontent.com/metwork-framework/resources/master/scripts/metwork_valid_merge_logic_status.py"
	chmod +x $@
